<!DOCTYPE html>
<html>
<head>
    <title>CRUD</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->url->get('img/favicon.ico')?>"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>
<div class="wrapper">
    {{ content() }}
</div>
{% if sentry_dsn is defined %}
    <script src="https://cdn.ravenjs.com/3.14.2/raven.min.js"></script>
    <script>
        var appDSN = "{{ sentry_dsn }}";
        //Raven.config(appDSN).install();
        {% if error is defined %}
        Raven.showReportDialog({
            eventId : "{{ errorid }}",
            dsn : appDSN
        });
        {% endif %}
    </script>
{% endif %}
<!-- Hotjar Tracking Code for https://aplikasi.kirim.email -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    (function(h,o,t,j,a,r){
        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
        h._hjSettings={hjid:502156,hjsv:5};
        a=o.getElementsByTagName('head')[0];
        r=o.createElement('script');r.async=1;
        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
        a.appendChild(r);
    })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
</script>
</body>
</html>
