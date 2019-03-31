<aside class="site_aside">
  {% if page.toc %}
  <div class="sidebar_toc">
    <strong class="sidebar_title">Table of Content</strong>
    {{ toc(page.content, {list_number: false}) }}
  </div>
  {% endif %}
  {% if (site.categories.length) %}
  <div class="sidebar_category">
    <strong class="sidebar_title">Categories</strong>
    <div>
      {{ list_categories({show_count: true}) }}
    </div>
  </div>
  {% endif %}
  {% if (site.tags.length) %}
  <div class="sidebar_tagcloud">
    <strong class="sidebar_title">Tag Cloud</strong>
    {{ tagcloud() }}
  </div>
  {% endif %}
</aside>
