{{ partial('partial/header') }}
<main class="site_main">
  {{ partial('partial/post', {post: page}) }}
  {{ partial('partial/nav') }}
  {{ partial('partial/comment') }}
</main>
{{ partial('partial/sidebar') }}
{{ partial('partial/footer') }}
