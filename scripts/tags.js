'use strict';

var request = require('sync-request');

var rUrl = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[.\!\/\\w]*))?)/;

/**
* pdf tag
*
* Syntax:
*   {% pdf /path/to/pdffile %}
*/
hexo.extend.tag.register('pdf', function(args){
  var sRtn = '';

  if (args.length && rUrl.test(args[0])) {
    sRtn = '<div class="embed_pdf"><embed src="' + args[0] + '" type="application/pdf" /></div>';
  }

  return sRtn;
});

/**
* google_photo_album tag
*
* Syntax:
*   {% google_photo_album url/to/shared/google/photo/album %}
*/
hexo.extend.tag.register('google_photo_album', function(args){
  var sRtn = '';

  if (args.length && rUrl.test(args[0])) {
    var res = request('GET', args[0]);
    if (res.statusCode == 200) {
      var sTitle = '';
      var sDesp = '';
      var arrPhotos = [];
      var match = [];
      var regexTitle = /<\s*meta\s+property="og:title"\s+content="([^"]*)/i;
      var regexDesc = /<\s*meta\s+property="og:description"\s+content="([^"]*)/i;
      var regexPhoto = /\"(http[^"]+)"\,[0-9^,]+\,[0-9^,]+/ig;

      var sBody = res.getBody('utf8');

      // get title
      if (regexTitle.test(sBody)) {
        match = sBody.match(regexTitle);
        sTitle = match[1];
      }
      // get Description
      if (regexDesc.test(sBody)) {
        match = sBody.match(regexDesc);
        sDesp = match[1];
      }
      // get all photos urls
      while (match = regexPhoto.exec(sBody)) {
        if (arrPhotos.indexOf(match[1]) < 0) arrPhotos.push(match[1]);
      }

      if (arrPhotos.length > 0) {
        sRtn += '<div class="album_container">';
        if (sTitle) sRtn += '<h3>' + sTitle + '</h3>';
        // if (sDesp) sRtn += '<p>' + sDesp + '</p>';
        sRtn += '<div class="google_photo_album">';
        arrPhotos.forEach(function(photo) {
          sRtn += '<a href="' + photo + '=w8064"><img src="' + photo + '=w400" /></a>';
        });
        sRtn += '</div></div>';
      }
    }
  }

  return sRtn;
});
