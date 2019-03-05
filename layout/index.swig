{% set page.layout = 'index' %}
<div class="bg">
  <video autoplay muted loop id="bg_video" poster="{{ url_for('uploads/wip.jpg') }}">
    <source src="https://www.w3schools.com/howto/rain.mp4" type="video/mp4">
  </video>
</div>
<div class="main">
  <div class="cards">
      <a href="{{ url_for('/ozlem') }}" title="Ozlem">
          <div class="card">
              <img src="uploads/wip.jpg" alt="Ozlem">
              <h2>Ozlem</h2>
          </div>
      </a>
      <a href="{{ url_for('/deniz') }}" title="Pelumi Deniz">
          <div class="card">
              <img src="uploads/wip.jpg" alt="Pelumi Deniz">
              <h2>Deniz</h2>
          </div>
      </a>
      <a href="{{ url_for('/temi') }}" title="Temi">
          <div class="card">
              <img src="uploads/wip.jpg" alt="Temi">
              <h2>Temi</h2>
          </div>
      </a>
  </div>
  {{ page.content }}
</div>