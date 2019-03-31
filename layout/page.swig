{{ partial('partial/header') }}
<main class="site_main">
  {% for widget in page.widgets %}
    {{ partial('partial/widget/' + widget) }}
  {% endfor %}
</main>
{{ partial('partial/footer') }}
