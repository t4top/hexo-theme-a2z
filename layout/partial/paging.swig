{% if is_post() %}
  {% if (page.prev || page.next) %}
  <nav class="page_nav">
    <span class="page_nav_prev">
    {% if (page.prev) %}
      <a href="{{ url_for(page.prev.path) }}" title="{{ page.prev.title }}">
        <i class="fa fa-arrow-left"></i>
        <strong>{{ page.prev.title }}</strong>
      </a>
    {% endif %}
    </span>
    <span class="page_nav_next">
    {% if (page.next) %}
      <a href="{{ url_for(page.next.path) }}" title="{{ page.next.title }}">
        <strong>{{ page.next.title }}</strong>
        <i class="fa fa-arrow-right"></i>
      </a>
    {% endif %}
    </span>
  </nav>
  {% endif %}
{% else %}
  {% if (page.total > 1) %}
  <nav class="page_nav">
    <span class="page_nav_prev">
    {% if (page.prev) %}
      <a href="{{ url_for(page.prev_link) }}" title="Page {{ page.prev }}"><i class="fa fa-arrow-left"></i> NEWER POSTS</a>
    {% endif %}
    </span>
    <span class="page_nav_current">
      {{ page.current }} of {{ page.total }}
    </span>
    <span class="page_nav_next">
    {% if (page.next) %}
      <a href="{{ url_for(page.next_link) }}" title="Page {{ page.next }}">OLDER POSTS <i class="fa fa-arrow-right"></i></a>
    {% endif %}
    </span>
  </nav>
  {% endif %}
{% endif %}
