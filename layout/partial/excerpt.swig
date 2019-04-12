<article class="excerpt" itemscope itemtype="http://schema.org/Article">
  <section class="excerpt_head">
    <a title="{{ post.title }}" href="{{ url_for(post.path) }}">
      {{ partial('widget/img', { src: post.thumbnail, title: post.title, imgcls: "thumbnail" }) }}
    </a>
  </section>
  <section class="excerpt_body">
    {% if post.categories.length > 0 %}
    <div class="categories">
      {% for category in post.categories %}
      <span>[<a href="{{ url_for(category.path) }}" title="{{ category.name }}">{{ category.name }}</a>]</span>
      {% endfor %}
    </div>
    {% endif %}
    <div class="content">
      <a href="{{ url_for(post.path) }}" title="{{ post.title }}">
        <h2 itemprop="name">{{ post.title }}</h2>
      </a>
      <p>
        {% if post.excerpt %}
          {{ post.excerpt }}
        {#{% else %}
          {{ truncate(post.content, {length: 300}) }}#}
        {% endif %}
      </p>
    </div>
    {% if post.tags.length > 0 %}
    <div class="tags">
      {% for tag in post.tags %}
      <span><a href="{{ url_for(tag.path) }}" title="{{ tag.name }}">#{{ tag.name }}</a></span>
      {% endfor %}
    </div>
    {% endif %}
  </section>
</article>