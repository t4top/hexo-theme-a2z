{% set page.title = 'Blogs' %}
{% set page.layout = 'blog' %}
<div class="main">
  <div class="debug" style="display:block">
    page.archive: {{ page.archive }} <br />
    page.comments: {{ page.comments }} <br />
    page.current: {{ page.current }} <br />
    page.total: {{ page.total }} <br />
    page.prev: {{ page.prev }} <br />
    page.prev_link: {{ page.prev_link }} <br />
    page.prev.title: {{ page.prev.title }} <br />
    page.next: {{ page.next }} <br />
    page.next_link: {{ page.next_link }} <br />
    page.next.title: {{ page.next.title }} <br />
    site.posts.length: {{ site.posts.length }} <br />
    page.posts.length: {{ page.posts.length }} <br />
  </div>
  <h1>Recent Posts</h1>
  {% for post in page.posts.sort('-date') %}
  <div class="post">
    {{ partial('partial/post_list', {post: post}) }}
  </div>
  {% endfor %}
  {{ partial('partial/nav') }}
</div>
<aside class="sidebar">
  {{ partial('partial/sidebar') }}
</aside>
