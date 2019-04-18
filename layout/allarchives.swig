{{ initHtmlObj() }}
{{ partial('partial/navbar') }}
{{ partial('partial/header') }}
<main class="site_main">
  <div class="container">
    <section class="site_content">
      <h1>All Posts</h1>
      <div class="posts">
      {% set AllAchives = createArchiveArray(site.posts.sort('date', 'desc')) %}
      {% for year in sortStringArray(Object.keys(AllAchives), 'desc') %}
        {% if loop.first %}<ul>{% endif %}
        <li><a href="{{ url_for(config.archive_dir + '/' + year) }}" title="{{ year }}">{{ year }}</a></li>
        {% for month in sortStringArray(Object.keys(AllAchives[year]), 'desc') %}
          {% if loop.first %}<ul>{% endif %}
          <li><a href="{{ url_for(config.archive_dir + '/' + year + '/' + month) }}" title="{{ year + '/' + month }}">{{ month }}</a></li>
            {% for post in AllAchives[year][month] %}
              {% if loop.first %}<ul>{% endif %}
              <li><a href="{{ url_for(post.path) }}" title="{{ post.title }}">{{ post.title }}</a></li>
              {% if loop.last %}</ul>{% endif %}
            {% endfor %}
          {% if loop.last %}</ul>{% endif %}
        {% endfor %}
        {% if loop.last %}</ul>{% endif %}
      {% endfor %}
      </div>
    </section>
    {{ partial('partial/sidebar') }}
  </div>
</main>
{{ partial('partial/footer') }}
