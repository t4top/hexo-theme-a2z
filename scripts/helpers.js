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
