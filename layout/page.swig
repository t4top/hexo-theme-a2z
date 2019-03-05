<div class="main">
  <div class="debug" style="display:none">
    page.comments: {{ page.comments }}
    page.current: {{ page.current }}
    page.total: {{ page.total }}
    page.prev: {{ page.prev }}
    page.prev_link: {{ page.prev_link }}
    page.prev.title: {{ page.prev.title }}
    page.next: {{ page.next }}
    page.next_link: {{ page.next_link }}
    page.next.title: {{ page.next.title }}
    site.posts.length: {{ site.posts.length }}
    page.posts.length: {{ page.posts.length }}
  </div>
  {{ partial('partial/post', {post: page}) }}
  {{ partial('partial/nav') }}
  {{ partial('partial/comment') }}
</div>
<aside class="sidebar">
  {{ partial('partial/sidebar') }}
</aside>
