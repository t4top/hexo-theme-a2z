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
    sRtn = '<div class="embed_pdf"><embed src="' + args[0] + '" width="100%" type="application/pdf" /></div>';
  }

  return sRtn;
});
