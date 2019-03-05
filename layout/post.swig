<div class="main">
  <div class="debug" style="display:none">
    page.comments: {{ page.comments }}
    page.current: {{ page.current }}
    page.total: {{ page.total }}
    {% if page.prev %}
    page.prev.title: {{ page.prev.title }}
    {% endif %}
    {% if page.next %}
    page.next.title: {{ page.next.title }}
    {% endif %}
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
