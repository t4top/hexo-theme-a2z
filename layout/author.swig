{% set expand_first_post = false %}
<div class="main">
  <div class="debug" style="display:block">
    page.layout: {{ page.layout }} <br />
    page.template: {{ page.template }} <br />
    page.type: {{ page.type }} <br />
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
{% set page.archive = true %}
  <div class="debug" style="display:block">
    page.layout: {{ page.layout }} <br />
    page.template: {{ page.template }} <br />
    page.type: {{ page.type }} <br />
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
  {{ partial('partial/post', {post: page}) }}
  {# show all posts under site by the author #}
  {% for post in page.posts.sort('-date') %}
    {% if post.author.indexOf(page.author) !== -1 %}
      <div class="post">
      {% if expand_first_post == true %}
        {{ partial('partial/post', {post: post}) }}
        {% set expand_first_post = false %}
      {% else %}
        {{ partial('partial/post_list', {post: post}) }}
      {% endif %}
      </div>
    {% endif %}
  {% endfor %}
  {{ partial('partial/nav') }}
</div>
<aside class="sidebar">
  {{ partial('partial/sidebar') }}
</aside>
