<meta charset="utf-8">
<title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="canonical" href="{{ url }}">
<!-- RSS -->
{{ feed_tag('atom.xml') }}
<!-- Open Graph -->
{{ open_graph({ image: page.thumbnail }) }}
<!-- Icon -->
<!-- CSS -->
{% set head_css = getEmptyArray() %}
{{ appendToArray(head_css, theme.head_css) }}
{{ appendToArray(head_css, 'css/'+ page.layout) }}
{% for val in head_css %}
  {{ css(val) }}
{% endfor %}
<!-- JS -->
{% for val in theme.head_js %}
  {{ js(val) }}
{% endfor %}
