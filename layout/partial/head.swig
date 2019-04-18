<meta charset="utf-8">
<title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="{{ url }}">
{% if theme.rss %}
  {{ feed_tag(theme.rss) }}
{% endif %}
{{ open_graph({ image: page.thumbnail||page.coverimage||theme.favicon }) }}
<meta http-equiv="x-dns-prefetch-control" content="on">
<link rel="dns-prefetch" href="//fonts.googleapis.com">
<link rel="dns-prefetch" href="//maxcdn.bootstrapcdn.com">
<link rel="dns-prefetch" href="//code.jquery.com">
<link rel="dns-prefetch" href="//www.google-analytics.com">
<link rel="dns-prefetch" href="{{ config.url }}">
{{ appendHeadCSS('css/' + page.layout) }}
