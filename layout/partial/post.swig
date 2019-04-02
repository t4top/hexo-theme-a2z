{% if trim(post.content) != "" %}
<article id="{{ post.layout }}-{{ post.slug }}-{{ url }}" class="article" itemscope itemtype="http://schema.org/Article" itemprop="blogPost" data-scroll-reveal>
  {% if is_post() %}
    <header>
        <h1 class="article_title" itemprop="name">{{ post.title }}</h1>
    </header>
    <span class="article_header">
      By <span itemprop="author">{{ post.author }}</span>
      / <time datetime="{{ date_xml(post.date) }}" itemprop="date_published">{{ date(post.date) }}</time>
      {% if post.comments && config.disqus_shortname %}
      / <span class="disqus-comment-count" data-disqus-url="{{ url }}"></span>
      {% endif %}
    </span>
  {% endif %}
  {{ partial('img', { src: post.thumbnail, title: post.title, lightbox: true }) }}
  {{ page_anchor(post.content) }}
  <span class="article_meta">
    <span class="meta_author" itemprop="author">
      <i class="fa fa-user-o"></i>{{ post.author }}
    </span>
    <span class="meta_date">
      <i class="fa fa-calendar"></i>
      <time datetime="{{ date_xml(post.date) }}" itemprop="date_published">{{ date(post.date) }}</time>
    {% if post.updated.isAfter(post.date, 'day') %}
      (<time datetime="{{ date_xml(post.updated) }}" itemprop="date_modified">Updated: {{ date(post.updated) }}</time>)
    {% endif %}
    </span>
    {% if post.comments && config.disqus_shortname %}
    <span class="meta_comment">
      <i class="fa fa-comment-o"></i>
      <span class="disqus-comment-count" data-disqus-url="{{ url }}"></span>
    </span>
    {% endif %}
  </span>
  <span class="article_share">
    <strong>Share This Post:</strong>
    {{ partial('share', {post: post}) }}
  </span>
</article>
{% endif %}
