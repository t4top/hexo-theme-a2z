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
