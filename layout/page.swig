{{ initHtmlObj() }}
{{ partial('partial/navbar') }}
{{ partial('partial/header') }}
<main class="site_main">
  <div class="container">
  {% for widget in page.widgets %}
    {{ partial('partial/widget/' + widget) }}
  {% endfor %}
  </div>
</main>
{{ partial('partial/footer') }}
