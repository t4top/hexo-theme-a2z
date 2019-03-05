{% if (page.total > 1) %}
  <nav id="page_nav">
    {{ paginator({
      prev_text: "&laquo; __('prev')",
      next_text: "__('next') &raquo;"
    }) }}
  </nav>
{% endif %}
{#
<% if (post.prev || post.next){ %>
<nav id="article-nav">
  <% if (post.prev){ %>
    <a href="<%- url_for(post.prev.path) %>" id="article-nav-newer" class="article-nav-link-wrap">
      <strong class="article-nav-caption"><%= __('newer') %></strong>
      <div class="article-nav-title">
        <% if (post.prev.title){ %>
          <%= post.prev.title %>
        <% } else { %>
          (no title)
        <% } %>
      </div>
    </a>
  <% } %>
  <% if (post.next){ %>
    <a href="<%- url_for(post.next.path) %>" id="article-nav-older" class="article-nav-link-wrap">
      <strong class="article-nav-caption"><%= __('older') %></strong>
      <div class="article-nav-title"><%= post.next.title %></div>
    </a>
  <% } %>
</nav>
<% } %>


<nav class="page_nav">
  <span class="prev">1</span>
  <span class="current">1</span>
  <span class="next">1</span>
    <a class="page-number" href="/playground_hexo/blogs/page/2/">2</a>
    <a class="extend next" rel="next" href="/playground_hexo/blogs/page/2/">__('next') &raquo;</a>
</nav>

<nav class="sibling sibling--previous">
  <div class="nav_prev">
  <a class="link" href="/videos/business/2019/01/29/brexit-business-uncertainty-ge-lon-orig.cnn" data-filter-hpt="_____left-arrow">
    <div class="thumbnail">
      <img class="media__image" alt="" src="//cdn.cnn.com/cnnnext/dam/assets/181128163340-london-waterloo-bridge-pedestrians-small-11.jpg">
      <i aria-hidden="true" class="media__icon icon-media-video cnn-icon" data-post-text="02:13"></i>
    </div>
    <div class="headline">Airbus warns 'no deal' Brexit could threaten its existence </div>
  </a>
  </div>
  <div class="nav_next">
    <a href="/videos/business/2019/01/29/brexit-business-uncertainty-ge-lon-orig.cnn" data-filter-hpt="_____left-arrow">
    </a>
  </div>
</nav>

<nav class="sibling sibling--next">
  <a class="link" href="/2019/02/13/politics/paul-manafort-robert-mueller/index.html" data-filter-hpt="_____right-arrow">
    <div class="headline">Judge: Manafort lied to FBI, special counsel</div>
  </a>
</nav>

#}