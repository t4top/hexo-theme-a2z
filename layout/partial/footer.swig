<footer class="site_footer">
  <div class="container">
    <div class="footer_copyright">
      &copy; {{ date(Date.now(), 'YYYY') }} {{ config.title or config.author }}
      {#
      <br />Powered by <a href="http://hexo.io/" target="_blank" rel="noopener noreferrer">Hexo</a> 
      (Theme: <a href="https://github.com/t4top/" target="_blank" rel="noopener noreferrer">A2Z</a>)
      #}
    </div>
    <div class="footer_links">
      {% if theme.rss %}
        <a href="{{ url_for(theme.rss) }}" title="RSS" target="_blank" rel="noopener noreferrer" download="{{ theme.rss }}"><i class="fa fa-rss-square"></i></a>
      {% endif %}
      {% if theme.github %}
        <a href="https://github.com/{{ theme.github }}" title="Source on Github" target="_blank" rel="noopener noreferrer"><i class="fa fa-github"></i></a>
      {% endif %}
    </div>
    {{ partial('widget/google_analytics') }}
    {% if theme.disqus_shortname %}
      <script id="dsq-count-scr" src="//{{ theme.disqus_shortname }}.disqus.com/count.js" async></script>
    {% endif %}
  </div>
</footer>
