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
    {% set title = 'Posts' %}
  {% endif %}
{% endif %}
{% set page.title = title %}
{% set page.layout = 'index' %}
{{ partial('partial/header') }}
<main class="site_main">
  <div class="post">
  {% for post in page.posts.sort('-date') %}
    {{ partial('partial/post_list', {post: post}) }}
  {% endfor %}
  </div>
  {{ partial('partial/nav') }}
</main>
{{ partial('partial/sidebar') }}
{{ partial('partial/footer') }}
