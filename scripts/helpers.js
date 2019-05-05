'use strict';

var cheerio = require('cheerio');

///* Only for DEBUGGING ->
var util = require('util');
var log = require('debug');

function printObj(obj) {
  log.log("Inspect:");
  log.log(util.inspect(obj, {depth: null}));
}

var tabCnt = 0;
function logCallback(str, direction) {
  if (direction > 0) tabCnt += 1;
  for (var i = 0; i < tabCnt; i++) {
    str = ' ' + str;
  }
  if (direction < 0) tabCnt -= 1;
  log.log(str);
}

hexo.extend.helper.register('entryLog', function (str) {
  logCallback(str + ' - enter', 1);
  return '';
});

hexo.extend.helper.register('exitLog', function (str) {
  logCallback(str + ' - exit', -1);
  return '';
});

hexo.extend.helper.register('hexo_version', function() {
  return this.env.version;
});
// <- Only for DEBUGGING */


// -- Local Functions --

function appendToArray(arr, items) {
  if (Array.isArray(items)) {
    items.forEach(function(item) {
      if (arr.indexOf(item) < 0) arr.push(item);
    });
  } else {
    if (arr.indexOf(items) < 0) arr.push(items);
  }
}


// -- Hexo Helper Functions --

hexo.extend.helper.register('page_anchor', function(str) {
  var hexo_obj = this;
  var $ = cheerio.load(str, {decodeEntities: false});
  var imgs = $('img');

  if (imgs.length) {
    imgs.each(function() {
      // process only imgs that are not children of a code or anchor element
      if (!$(this).parent().is('code') && !$(this).parent().is('a')) {
        var src = $(this).attr('src');
        var title = ($(this).attr('alt') || $(this).attr('title'));
        $(this).wrap('<a href="' + hexo_obj.url_for(src) + '" data-lightbox="lightbox" data-title="' + title + '"></a>');
      }
    });
  }

  return $.html();
});

var htmlObj = {};
hexo.extend.helper.register('initHtmlObj', function() {
  var layout = this.page.layout;
  if (!htmlObj[layout]) {
    htmlObj[layout] = { head_css: [], head_js: [], body_js: [] };
  }
  if (this.theme.head_css) appendToArray(htmlObj[layout].head_css, this.theme.head_css);
  if (this.theme.head_js) appendToArray(htmlObj[layout].head_js, this.theme.head_js);
  if (this.theme.body_js) appendToArray(htmlObj[layout].body_js, this.theme.body_js);

  return '';
});

hexo.extend.helper.register('appendHeadCSS', function(path) {
  appendToArray(htmlObj[this.page.layout].head_css, path);
  return '';
});

hexo.extend.helper.register('appendHeadJS', function(path) {
  appendToArray(htmlObj[this.page.layout].head_js, path);
  return '';
});

hexo.extend.helper.register('appendBodyJS', function(path) {
  appendToArray(htmlObj[this.page.layout].body_js, path);
  return '';
});

hexo.extend.helper.register('getHtmlObj', function() {
  return htmlObj;
});

hexo.extend.helper.register('isCurrentPath', function (path = '/') {
  var hexo_obj = this;
  var rUrl = /^\w+:\/\/[^\/]+?/;
  var currentPath = hexo_obj.path.replace(/^[^/].*/, '/$&');

  if (rUrl.test(path)) {
    currentPath = hexo_obj.url;
    if (path[path.length - 1] === '/') path += 'index.html';
    return (currentPath === path);
  } else if (path.startsWith(hexo_obj.url_for(hexo_obj.config.archive_dir))) {
    currentPath = hexo_obj.url;
    return ((currentPath.indexOf('/' + hexo_obj.config.archive_dir + '/') >= 0) ||
            (currentPath.indexOf('/tags/') >= 0) || (currentPath.indexOf('/categories/') >= 0));
  } else {
    path = path.replace(/\/index\.html$/, '/');
    if (path === '/') return (currentPath === '/index.html');
    path = path.replace(/^[^/].*/, '/$&');
    return currentPath.startsWith(path);    
  }
});

hexo.extend.helper.register('createArchiveArray', function(posts) {
  var postsObj = {};
  posts.forEach(function(post) {
    var year = post.date.year().toString();
    var month = post.date.format('MM').toString();

    if (Object.keys(postsObj).indexOf(year) < 0) {
      postsObj[year] = {};
    }
    if (Object.keys(postsObj[year]).indexOf(month) < 0) {
      postsObj[year][month] = {};
    }
    if (Object.keys(postsObj[year][month]).indexOf(post.title) < 0) {
      postsObj[year][month][post.title] = {};
    }
    postsObj[year][month][post.title] = post;
  });

  return postsObj;
});

hexo.extend.helper.register('sortStringArray', function(obj, order) {
  if (order == 'desc')
    return obj.sort((a, b) => b.localeCompare(a));
  else
    return obj.sort((a, b) => a.localeCompare(b));
});

hexo.extend.helper.register('zeroPad', function (num, size = 2) {
  var s = num + "";
  while (s.length < size) s = "0" + s;
  return s;
});