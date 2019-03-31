{% spaceless %}
<!DOCTYPE html>
<html lang="{{ page.lang }}">
  <head prefix="og: http://ogp.me/ns#">
    {{ partial('partial/head') }}
  </head>
  <body>
    {{ body }}
  </body>
</html>
{% endspaceless %}