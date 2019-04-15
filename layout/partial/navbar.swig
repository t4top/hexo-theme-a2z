<nav class="site_nav">
  <div class="container">
    <h1 class="logo">
      <a href="{{ url_for(theme.home) }}" title="Home">AkinbosoyeZaimoglu</a>
    </h1>
    <div class="nav">
      {% if theme.rss %}
        <a href="{{ url_for(theme.rss) }}" title="RSS" target="_blank" download="{{ theme.rss }}"><i class="fa fa-rss"></i></a>
      {% endif %}
      <input type="checkbox" id="nav_checkbox" class="nav_checkbox" />
      <ul>
      {% for menu in theme.menu %}
        {% if isCurrentPath(url_for(menu)) %}
          <li><a href="{{ url_for(menu) }}" class="active_link">{{ loop.key }}</a></li>
        {% else %}
          <li><a href="{{ url_for(menu) }}">{{ loop.key }}</a></li>
        {% endif %}
      {% endfor %}
      </ul>
      <label for="nav_checkbox" class="nav_checkbox_label"><span></span></label>
    </div>
  </div>
</nav>