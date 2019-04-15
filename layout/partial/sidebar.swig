<aside class="site_aside">
  <div class="wrapper">
    {% if is_post() && page.toc %}
    <div class="sidebar_toc">
      <strong class="title">Table of Content</strong>
      {{ toc(page.content, {class: 'toc', list_number: true, max_depth: 3}) }}
    </div>
    {% endif %}
    {% if (site.categories.length) %}
    <div class="sidebar_category">
      <strong class="title">All Categories</strong>
      {{ list_categories({show_count: true}) }}
    </div>
    {% endif %}
    {% if (site.tags.length) %}
    <div class="sidebar_tagcloud">
      <strong class="title">All Tags</strong>
      <span class="tagcloud">{{ tagcloud({amount: 30, min_font: 0.6, max_font: 1.2, unit: 'rem'}) }}</span>
    </div>
    {% endif %}
  </div>
</aside>
