{{ partial('partial/header') }}
<main class="site_main">
  <h1>All Posts</h1>
  <div class="post">
  {% set AllAchives = createArchiveArray(site.posts.sort('date', 'desc')) %}
  {% for year in sortStringArray(Object.keys(AllAchives), 'desc') %}
    {% if loop.first %}<ul>{% endif %}
    <li><a href="{{ url_for(config.archive_dir + '/' + year) }}">{{ year }}</a></li>
    {% for month in sortStringArray(Object.keys(AllAchives[year]), 'desc') %}
      {% if loop.first %}<ul>{% endif %}
      <li><a href="{{ url_for(config.archive_dir + '/' + year + '/' + month) }}">{{ month }}</a></li>
        {% for post in AllAchives[year][month] %}
          {% if loop.first %}<ul>{% endif %}
          <li><a href="{{ url_for(post.path) }}">{{ post.title }}</a></li>
          {% if loop.last %}</ul>{% endif %}
        {% endfor %}
      {% if loop.last %}</ul>{% endif %}
    {% endfor %}
    {% if loop.last %}</ul>{% endif %}
  {% endfor %}
  </div>
</main>
{{ partial('partial/sidebar') }}
{{ partial('partial/footer') }}
