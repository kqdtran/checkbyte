<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>{{ title }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Your description">
    <meta name="author" content="James Sullivan">

    <!-- Le styles -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/style.css" rel="stylesheet">
    <style>
      body {
        padding-top: 20px; /* 20px to make the container go all the way to the bottom of the topbar */
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="/static/img/favicon.ico">
  </head>

  <body>

    <div class="container">
      <div role="main">
        <div class="row">
          <div class="col-lg-6 left">
            <textarea name="old" class="form-control" rows="2" placeholder="Paste the old code here"></textarea>
          </div>

          <div class="col-lg-6 right">
            <textarea name="new" class="form-control" rows="2" placeholder="Paste the new code here"></textarea>
          </div>

          <br /><br /><br />
        </div><!-- end row -->

        <div class="row">
          <p class="text-center">
            <button id="checkByte" type="submit" class="btn btn-success btn-large">Check!</button>
          </p>
          
          <div class="panel">
            <div class="text-panel" id="panel">
              <div id="result" style="display: none;">
              </div>
            </div>
          </div>
        </div> 
      </div><!-- end main -->
    </div><!-- end container -->

    <hr>

    <footer>
      <small>
        <div class="footer-nav">
          Checks code difference in byte. Source: EE122 Staff &lt;3
        </div>
      </small>
    </footer>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/static/js/jquery-2.0.3.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/script.js"></script>
  </body>
</html>
