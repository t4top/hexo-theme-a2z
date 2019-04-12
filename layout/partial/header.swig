<header class="site_header">
  <div class="container">
    <h1 itemprop="name">
      {% if is_post() %}
        Blogs
      {% else %}
        {{ page.title }}
      {% endif %}
    </h1>
    {{ partial('widget/img', { src: url_for('//unsplash.it/1920/400?image=767'), title: post.title }) }}
  </div>
</header>
