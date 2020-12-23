{{ appendHeadCSS('css/widget/contact') }}
{{ appendBodyJS('js/widget/contact') }}
{{ appendBodyJS('https://www.recaptcha.net/recaptcha/api.js') }}
{% set RECAPTCHA_SITE_KEY = "6Lfs-OAZAAAAABs8orj2Nq2kxk5T0IIztD8lwr4d" %}
<section class="contact">
    <h1>Get in Touch</h1>
    <form class="form_ajax" id="contact_form" method="post" action="https://script.google.com/macros/s/AKfycbxM-sGI6OtXQsRspTTteZ0hLsdsUzYvJMewWaSIgp9C3ZTN7ls/exec">
        <p>
            We would love to hear from you. Please use below form to send us your message or questions.
            All fields with <span class="required">*</span> are required.
        </p>
        <div>
            <label for="name">Name <span class="required">*</span></label>
            <input id="name" name="name" type="text" placeholder="Enter your name" required aria-required=”true” title="Name" pattern="\s*\S+[\s\S]*" maxlength=”100” />
            <div id="name_wrong" class="error_msg hideme">Name is required</div>
        </div>
        <div>
            <label for="email">Email Address <span class="required">*</span></label>
            <input id="email" name="email" type="email" placeholder="Enter your email" required aria-required=”true” title="Email" />
            <div id="email_wrong" class="error_msg hideme">Email is not valid</div>
            <label for="newsletter">
            <input id="newsletter" name="newsletter" type="checkbox" class="chkbox" /> Inform me of new posts
            </label>
        </div>
        <div>
            <label for="message">Message <span class="required">*</span></label>
            <textarea id="message" name="message" placeholder="Enter your message, questions, etc." cols="45" rows="10" required aria-required=”true” title="Message"></textarea>
            <div id="message_wrong" class="error_msg hideme">Message is required</div>
        </div>
        <div class="hideme">
            <label for="karaspace">Keep this field empty</label>
            <input id="karaspace" name="karaspace" type="text" value="" placeholder="Keep this field empty" />
            <input id="recaptcha" name="recaptcha" type="hidden" />
        </div>
        <div>
            <button id="btn_submit" class="g-recaptcha" data-sitekey="{{ RECAPTCHA_SITE_KEY }}" data-callback="onSubmitContact" data-action="submit">Submit Comment</button>
        </div>
        <div class="recaptcha_text_badge">
            This site is protected by reCAPTCHA and the Google <a href="https://policies.google.com/privacy" target="_blank" rel="noopener noreferrer">Privacy Policy</a>
            and <a href="https://policies.google.com/terms" target="_blank" rel="noopener noreferrer">Terms of Service</a> apply.
        </div>
    </form>
    <p id="thanks_msg" class="hideme">Thanks a lot for your message.</p>
</section>