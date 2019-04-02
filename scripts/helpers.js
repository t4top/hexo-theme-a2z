'use strict';

var cheerio = require('cheerio');

var util = require('util');
var log = require('debug');
function printObj(obj) {
  log.log("Inspect:");
  log.log(util.inspect(obj, {depth: null}));
}

hexo.extend.helper.register('hexo_version', function() {
  return this.env.version;
});

hexo.extend.helper.register('page_anchor', function(str) {
  var $ = cheerio.load(str, {decodeEntities: false});
  var headings = $('h1, h2, h3, h4, h5, h6');

  if (!headings.length) return str;

  headings.each(function() {
    var id = $(this).attr('id');

    $(this)
      .addClass('article_heading')
      .append('<a class="article_anchor" href="#' + id + '" aria-hidden="true"></a>');
  });

  return $.html();
});

var emptyArr = [];
hexo.extend.helper.register('getEmptyArray', function() {
  emptyArr = [];
  return emptyArr;
});

hexo.extend.helper.register('appendToArray', function(arr, item) {
  if (!Array.isArray(arr)) arr = new Array();
  if (Array.isArray(item) || arr.indexOf(item) < 0) {
    arr.push(item);
  }
  return '';
});

hexo.extend.helper.register('isCurrentPath', function (path = '/') {
  var rUrl = /^\w+:\/\/[^\/]+?/;
  var currentPath = this.path.replace(/^[^/].*/, '/$&');

  if (rUrl.test(path)) {
    currentPath = this.url;
    if (path[path.length - 1] === '/') path += 'index.html';
    return (currentPath === path);
  } else if (path.startsWith(this.url_for(this.config.archive_dir))) {
    currentPath = this.url;
    return ((currentPath.indexOf('/' + this.config.archive_dir + '/') >= 0) ||
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
  posts.forEach(function(post, i) {
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