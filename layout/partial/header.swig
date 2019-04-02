<nav class="site_nav">
  <h1 class="logo">
    <a href="{{ url_for('/') }}" title="Home">AkinbosoyeZaimoglu</a>
  </h1>
  <div class="nav">
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
</nav>
<header class="site_header">
  <div class="title">
    <h1 itemprop="name">
      {% if is_post() %}
        Blogs
      {% else %}
        {{ page.title }}
      {% endif %}
    </h1>
    {{ partial('img', { src: url_for('//unsplash.it/1920/400?image=767'), title: post.title }) }}
  </div>
</header>
