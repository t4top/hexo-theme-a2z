{{ initHtmlObj() }}
{% set bg_video_path = 'https://www.w3schools.com/howto/rain.mp4' %}
{% set bg_img_path = url_for('//unsplash.it/1920/1080') %}
<nav class="site_nav">
    <a href="{{ url_for(theme.menu['Contact Us']) }}" class="btn" title="Get in touch">Contact Us</a>
</nav>
<header class="site_header">
    <div class="title">
        <h1>Welcome to our World</h1>
        <a href="{{ url_for(config.archive_dir) }}" class="btn" title="Read more about us">Read More ...</a>
    </div>
</header>
<main class="site_main">
    <div class="bg grayscale">
        <video autoplay muted loop id="bg_video" poster="{{ bg_img_path }}">
            <source src="{{ bg_video_path }}" type="video/mp4">
        </video>
    </div>
    <div class="cards">
        <a href="{{ url_for(theme.menu['Ozlem']) }}" title="Ozlem">
            <div class="card">
                <img src="//unsplash.it/g/400?image=1011" alt="Ozlem">
                <h2>Ozlem</h2>
            </div>
        </a>
        <a href="{{ url_for(theme.menu['Deniz']) }}" title="Pelumi Deniz">
            <div class="card">
                <img src="//unsplash.it/g/400?image=669" alt="Pelumi Deniz">
                <h2>Deniz</h2>
            </div>
        </a>
        <a href="{{ url_for(theme.menu['Temi']) }}" title="Temi">
            <div class="card">
                <img src="//unsplash.it/g/400?image=1005" alt="Temi">
                <h2>Temi</h2>
            </div>
        </a>
    </div>
    {{ page.content }}
</main>
{{ partial('partial/footer') }}
