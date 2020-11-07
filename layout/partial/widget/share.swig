{% set sh_url = encodeURIComponent(url) %}
{% set sh_title = page.title %}
{% set sh_source = encodeURIComponent(config.title) %}
{% if page.description %}
  {% set sh_summary = encodeURIComponent(page.description) %}
{% else %}
  {% set sh_summary = encodeURIComponent(config.description) %}
{% endif %}
{% set sh_image = page.thumbnail || page.coverimage || theme.favicon %}

<!-- Facebook -->
<a class="share_facebook" href="https://www.facebook.com/sharer.php?u={{ sh_url }}" target="_blank" rel="noopener noreferrer" title="Facebook" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-facebook-official"></i></a>
<!-- Twitter -->
<a class="share_twitter" href="https://twitter.com/intent/tweet?url={{ sh_url }}&text={{ sh_title }}" target="_blank" rel="noopener noreferrer" title="Twitter" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-twitter"></i></a>
<!-- WhatsApp -->
<a class="share_whatsapp" href="whatsapp://send?text={{ sh_url }}" target="_blank" rel="noopener noreferrer" title="WhatsApp" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-whatsapp"></i></a>
<!-- PInterest -->
<a class="share_pinterest" href="https://pinterest.com/pin/create/button/?url={{ sh_url }}&description={{ sh_summary }}&media={{ sh_image }}" target="_blank" rel="noopener noreferrer" title="Pinterest" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-pinterest"></i></a>
<!-- Xing -->
<a class="share_xing" href="https://www.xing.com/spi/shares/new?url={{ sh_url }}" target="_blank" rel="noopener noreferrer" title="Xing" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-xing"></i></a>
<!-- LinkedIn -->
<a class="share_linkedin" href="https://www.linkedin.com/shareArticle?mini=true&url={{ sh_url }}&title={{ sh_title }}&summary={{ sh_summary }}&source={{ sh_source }}" target="_blank" rel="noopener noreferrer" title="LinkedIn" data-url="{{ url }}" data-id="{{ page._id }}"><i class="fa fa-linkedin-square"></i></a>
<!-- Snail mail -->
<a class="share_mail" href="mailto:?subject={{ sh_title }}&body={{ sh_url }}" title="Send via Email"><i class="fa fa-envelope-o"></i></a>
