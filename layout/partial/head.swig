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
  {{ css('css/'+ page.layout) }}
  {{ css('css/lightbox.min') }}
  <!-- JS -->
  <script defer src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script defer src="{{ url_for('js/lightbox.min.js') }}"></script>
  <script defer src="{{ url_for('js/main.js') }}"></script>
  <!-- fonts -->
  <link href="https://fonts.googleapis.com/css?family=Cookie|Fjalla+One|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
