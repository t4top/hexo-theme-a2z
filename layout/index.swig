{{ initHtmlObj() }}
{% set title = '' %}
{% if (page.category) %}
  {% set title = page.category %}
{% endif %}
{% if (page.tag) %}
  {% set title = "#" + page.tag %}
{% endif %}
{% if (page.archive) %}
  {% if (page.year) %}
    {% set title = "Posts of " + page.year %}
    {% if (page.month) %}
      {% set title += "/" + zeroPad(page.month) %}
    {% endif %}
  {% else %}
    {% set title = '' %}
  {% endif %}
{% endif %}
{% set page.title = title %}
{% set page.layout = 'index' %}

{{ partial('partial/navbar') }}
<main class="site_main">
  <div class="container">
    {% if !is_home() && title %}
    <h1>{{ title }}</h1>
    {% endif %}
    <div class="posts">
    {% for post in page.posts.sort('-date') %}
      {{ partial('partial/excerpt', {post: post}) }}
    {% endfor %}
    </div>
    {{ partial('partial/paging') }}
  </div>
</main>
{{ partial('partial/footer') }}
