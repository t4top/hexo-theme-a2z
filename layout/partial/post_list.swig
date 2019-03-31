<article class="excerpt" itemscope itemtype="http://schema.org/Article">
  <div class="excerpt_img">
    <a title="{{ post.title }}" href="{{ url_for(post.path) }}">
      {{ partial('img', { src: post.thumbnail, title: post.title, imgcls: "excerpt_img" }) }}
    </a>
  </div>
  <div class="excerpt_content">
    <a class="excerpt_link" href="{{ url_for(post.path) }}" title="{{ post.title }}">
      <h2 itemprop="name">{{ post.title }}</h2>
      <p>
      {% if post.excerpt %}
        {{ post.excerpt }}
      {% else %}
        {{ truncate(post.content, {length: 300}) }}
      {% endif %}
      </p>
    </a>
    {% for tag in post.tags %}
    <span><a title="{{ tag.name }}" href="{{ url_for(tag.path) }}">#{{ tag.name }}</a></span>
    {% endfor %}
  </div>
</article>