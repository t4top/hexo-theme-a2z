{{ partial('partial/header') }}
<main class="site_main">
  {% for widget in page.widgets %}
    {{ partial('_widget/' + widget) }}
  {% endfor %}
</main>
{{ partial('partial/footer') }}
