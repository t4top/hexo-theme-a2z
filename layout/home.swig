{{ initHtmlObj() }}
{% set bg_video_path = '' %}
{% set bg_img_path = url_for('https://lh3.googleusercontent.com/1pwEf8i9dXZ3m1wsM0pdpt5c4msedRa2W-4hoAJz-5P6q_Qd3RahoqdDTVJAagfUT1KYMQohUbTE5_gqpeu83jCQ8iJxqlSrKSiJGei4EsB2-FJ4vdS3ThhjrPwXtH6hCJSlXspBpWk') %}
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
                <img src="https://lh3.googleusercontent.com/dpZqlL4CArTFWxV12_ka47YkBFwAsbtz_LEtVqpiOHWEEUJipvWUKQfkS-XaWzZfguTCfw3IWlHPc0wbqHN-7yF28VEo-ltWUGCtO-JluVMoDkkPbYj3PYtZlBTeUfgfvUPbldDHMiIdds1l3sANVxp-8KEJt3PbJLdJCPpo5TloK6th3zAAi4rBfvJoVivV4A6DupTrEF4rDWlLZBRZ7XOK9xtnViSde8z70ies-kjjp7RIblNpVolXE8hFcR2WdUQ0yRNcAi20F7Q6vVRvkZ4JHovMKS-y55Kq1XMft_GUk5pVKYXswIMumnBO6UmXyNStj0ZacAGoYvVmLsivItd3niMNkAJ63JLnLjx9YxHLAmQf2Wk_M0dJAG39ypG_bJfz4RTMRSM_723RRt8_GXzVOun6FustdLXlY4RFAnpnv9bedqa3Yj9DYyezhL70bM2t0mO-PM9Vl_KwOgAFi1sprJJDmzJ7TnX6WYh6cbzAZCSoQRdZCG0iO9PlRair03qHFT_RnGzTyGaDhbC2bSwP1CS7ymFkU5ga6rfldWakyKTWb5UU2JmsGS1syyN22ySvqYhrrKggGKtCXz6cM1zH8HjRybsw43oG63qkLI22M1qY4XsZeGT0eGobjRQDBhYFZIm4YUzDU8L4uh8pbm1D0hSA87-wbBYg-nIe4UzFl2HE5Xpfqnp40Y9-aic1vglE6lwVLqyY_CP98xS1eovpIg" alt="Ozlem">
                <h2>Ozlem</h2>
            </div>
        </a>
        <a href="{{ url_for(theme.menu['Deniz']) }}" title="Pelumi Deniz">
            <div class="card">
                <img src="https://lh3.googleusercontent.com/3ByWGDpatMiKAjam08QUYv0flgpuoSuJUh0M73AFLWqk0cnMhzXPQ4Q8JXxGHuXOFK7uRsKnZKCMCdyJJfgvNcssTHEJ5CfR1PB_vLeUlBG8h_PkixzozbGxcH5nZ5CgclQfj07YMzI" alt="Pelumi Deniz">
                <h2>Deniz</h2>
            </div>
        </a>
        <a href="{{ url_for(theme.menu['Temi']) }}" title="Temi">
            <div class="card">
                <img src="https://lh3.googleusercontent.com/5fo4Zw2cglv0WMPOkR21wOvKc9G8ZO8SJwU7cprk_OGV2eGqAsqY0pUruSXXCCpEFvbNiDk9RwB7R4S-M4ERkoE6ou2ovkgZWa2V-3rgqeWyRPLImH4BlbBbc_QZAp2xWTxNLmjYFFw" alt="Temi">
                <h2>Temi</h2>
            </div>
        </a>
    </div>
    {{ page.content }}
</main>
{{ partial('partial/footer') }}
