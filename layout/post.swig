{{ partial('partial/navbar') }}
<main class="site_main">
  <div class="container">
    <section class="site_content">
      {{ partial('partial/post', {post: page}) }}
      {{ partial('partial/paging') }}
      {{ partial('partial/widget/comment') }}
    </section>
    {{ partial('partial/sidebar') }}
  </div>
</main>
{{ partial('partial/footer') }}
