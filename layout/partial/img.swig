{% if not imgcls %}
  {% set imgcls = "img" %}
{% endif %}
{% if src %}
  {% if lightbox %}
    <a href="{{ url_for(src) }}" data-lightbox="lightbox" data-title="{{ title }}">
      <img class="{{ imgcls }}" src="{{ url_for(src) }}" alt="{{ title }}" title="{{ title }}" />
    </a>
  {% else %}
    <img class="{{ imgcls }}" src="{{ url_for(src) }}" alt="{{ title }}" title="{{ title }}" />
  {% endif %}
{% endif %}
