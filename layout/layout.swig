{% spaceless %}
<!DOCTYPE html>
<html lang="{{ page.lang }}">
  <head prefix="og: http://ogp.me/ns#">
    {{ partial('partial/head') }}
    <!-- CSS -->
    {% set htmlObj = getHtmlObj() %}
    {% for val in htmlObj[page.layout].head_css %}
      {{ css(val) }}
    {% endfor %}
    <!-- JS -->
    {% for val in htmlObj[page.layout].head_js %}
      {{ js(val) }}
    {% endfor %}
  </head>
  <body>
    {{ body }}
    <!-- JS -->
    {% for val in htmlObj[page.layout].body_js %}
      {{ js(val) }}
    {% endfor %}
  </body>
</html>
{% endspaceless %}