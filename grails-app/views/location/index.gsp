<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Web Locater</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- CSS -->
  <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet">
  <style type="text/css">

      /* Sticky footer styles
      -------------------------------------------------- */

      html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        /* Negative indent footer by it's height */
        margin: 0 auto -60px;
      }

      /* Set the fixed height of the footer here */
      #push,
      #footer {
        height: 60px;
      }
      #footer {
        background-color: #f5f5f5;
      }

      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }



      /* Custom page CSS
      -------------------------------------------------- */
      /* Not required for template or sticky footer method. */

      .container {
        width: auto;
        max-width: 680px;
      }
      .container .credit {
        margin: 20px 0;
      }

    </style>
    <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
      <![endif]-->

      <!-- Fav and touch icons -->
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
      <link rel="shortcut icon" href="../assets/ico/favicon.png">
    </head>

    <body>


      <!-- Part 1: Wrap all page content here -->
      <div id="wrap">

        <!-- Begin page content -->
        <div class="container">
          <div class="page-header">
            <h1>Web Locater</h1>
          </div>
          <g:if test="${location != null}" >
          <p class="lead">Your IP Address is ${ipAddr}. Here is the information about your location:</p>

          <table class="table">
            <tr>
              <th>Country</th>
              <td>${location.countryName}</td>
            </tr>
            <tr>
              <th>City</th>
              <td>${location.city}</td>
            </tr>
            <tr>
              <th>Latitude</th>
              <td>${location.latitude}</td>
            </tr>
            <tr>
              <th>Longitude</th>
              <td>${location.longitude}</td>
            </tr>
            <tr>
              <th>Region</th>
              <td>${location.region}</td>
            </tr>
          </table>
          </g:if>
          <g:else>
          <p class="lead">Could not find location information for your IP Address ${ipAddr}.</p>
          </g:else>
        </div>

        <div id="push"></div>
      </div>

      <div id="footer">
        <div class="container">
        <p class="muted credit"> Web Locater by David Kelly using the Grails framework. <a href="http://github.com/kellydavid/web-locater/">Check out the repo on Github</a>.</p>
        </div>
      </div>



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>
  -->

</body>
</html>