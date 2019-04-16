{% if trim(post.content) != "" %}
<article id="{{ post.layout }}-{{ post.slug }}-{{ url }}" class="post" itemscope itemtype="http://schema.org/Article" itemprop="blogPost" data-scroll-reveal>
  <span class="post_share_top"><strong>Share:</strong>{{ partial('widget/share') }}</span>
  <div class="post_title"><h1 itemprop="name">{{ post.title }}</h1></div>
  <div class="post_meta">
    {% if post.author %}
      {% for author in post.author.split(',') %}
        {% set author = author.trim() %}
        <span class="meta_author">
          {% if (theme.authors_icons[author]) %}
            {{ partial('widget/img', { src: theme.authors_icons[author], title: post.title }) }}
          {% else %}
            <i class="fa fa-user-circle-o"></i>
          {% endif %}
          <span class="author" itemprop="author"><a href="{{ url_for(theme.menu[author]) }}" title="{{ author }}">{{ author }}</a></span>
        </span>
      {% endfor %}
    {% endif %}
    <span class="meta_date">
      <i class="fa fa-calendar"></i><time class="date" datetime="{{ date_xml(post.date) }}" itemprop="date_published">{{ date(post.date) }}</time>
    {% if post.updated.isAfter(post.date, 'day') %}
      <time class="updated" datetime="{{ date_xml(post.updated) }}" itemprop="date_modified">(Updated: {{ date(post.updated) }})</time>
    {% endif %}
    </span>
    {% if post.comments && theme.disqus_shortname %}
    <span class="meta_comment">
      <i class="fa fa-comment-o"></i><span class="disqus-comment-count" data-disqus-url="{{ url }}"></span>
    </span>
    {% endif %}
  </div>
  {{ partial('widget/img', { src: post.coverimage, title: post.title, imgcls: 'post_coverimage', lightbox: true }) }}
  <div class="post_content">{{ page_anchor(post.more) }}</div>
  <div class="post_share_down"><strong>Share:</strong>{{ partial('widget/share') }}</div>
</article>
{% endif %}
