require 'rubygems'
require 'bundler/setup'
require 'cuba'

Cuba.define do
  on root do
    on accept 'application/json' do
      res.write <<-JSON
        {
          "ip" : "#{req.ip}"
        }
      JSON
    end

    on accept 'application/xml' do
      res.write <<-XML
        coming soon...
      XML
    end

    on accept 'text/xml' do
      res.write <<-XML
        coming soon...
      XML
    end

    on accept 'text/html' do
      res.write <<-HTML
      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="utf-8">

        <!-- http://www.quirksmode.org/blog/archives/2010/09/combining_meta.html -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>My IP is</title>
        <style>
          /*! normalize.css v3.0.1 | MIT License | git.io/normalize */

          /**
           * 1. Set default font family to sans-serif.
           * 2. Prevent iOS text size adjust after orientation change, without disabling
           *    user zoom.
           */

          html {
            font-family: sans-serif; /* 1 */
            -ms-text-size-adjust: 100%; /* 2 */
            -webkit-text-size-adjust: 100%; /* 2 */
          }

          /**
           * Remove default margin.
           */

          body {
            margin: 0;
          }

          /* HTML5 display definitions
             ========================================================================== */

          /**
           * Correct `block` display not defined for any HTML5 element in IE 8/9.
           * Correct `block` display not defined for `details` or `summary` in IE 10/11 and Firefox.
           * Correct `block` display not defined for `main` in IE 11.
           */

          article,
          aside,
          details,
          figcaption,
          figure,
          footer,
          header,
          hgroup,
          main,
          nav,
          section,
          summary {
            display: block;
          }

          /**
           * 1. Correct `inline-block` display not defined in IE 8/9.
           * 2. Normalize vertical alignment of `progress` in Chrome, Firefox, and Opera.
           */

          audio,
          canvas,
          progress,
          video {
            display: inline-block; /* 1 */
            vertical-align: baseline; /* 2 */
          }

          /**
           * Prevent modern browsers from displaying `audio` without controls.
           * Remove excess height in iOS 5 devices.
           */

          audio:not([controls]) {
            display: none;
            height: 0;
          }

          /**
           * Address `[hidden]` styling not present in IE 8/9/10.
           * Hide the `template` element in IE 8/9/11, Safari, and Firefox < 22.
           */

          [hidden],
          template {
            display: none;
          }

          /* Links
             ========================================================================== */

          /**
           * Remove the gray background color from active links in IE 10.
           */

          a {
            background: transparent;
          }

          /**
           * Improve readability when focused and also mouse hovered in all browsers.
           */

          a:active,
          a:hover {
            outline: 0;
          }

          /* Text-level semantics
             ========================================================================== */

          /**
           * Address styling not present in IE 8/9/10/11, Safari, and Chrome.
           */

          abbr[title] {
            border-bottom: 1px dotted;
          }

          /**
           * Address style set to `bolder` in Firefox 4+, Safari, and Chrome.
           */

          b,
          strong {
            font-weight: bold;
          }

          /**
           * Address styling not present in Safari and Chrome.
           */

          dfn {
            font-style: italic;
          }

          /**
           * Address variable `h1` font-size and margin within `section` and `article`
           * contexts in Firefox 4+, Safari, and Chrome.
           */

          h1 {
            font-size: 2em;
            margin: 0.67em 0;
          }

          /**
           * Address styling not present in IE 8/9.
           */

          mark {
            background: #ff0;
            color: #000;
          }

          /**
           * Address inconsistent and variable font size in all browsers.
           */

          small {
            font-size: 80%;
          }

          /**
           * Prevent `sub` and `sup` affecting `line-height` in all browsers.
           */

          sub,
          sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline;
          }

          sup {
            top: -0.5em;
          }

          sub {
            bottom: -0.25em;
          }

          /* Embedded content
             ========================================================================== */

          /**
           * Remove border when inside `a` element in IE 8/9/10.
           */

          img {
            border: 0;
          }

          /**
           * Correct overflow not hidden in IE 9/10/11.
           */

          svg:not(:root) {
            overflow: hidden;
          }

          /* Grouping content
             ========================================================================== */

          /**
           * Address margin not present in IE 8/9 and Safari.
           */

          figure {
            margin: 1em 40px;
          }

          /**
           * Address differences between Firefox and other browsers.
           */

          hr {
            -moz-box-sizing: content-box;
            box-sizing: content-box;
            height: 0;
          }

          /**
           * Contain overflow in all browsers.
           */

          pre {
            overflow: auto;
          }

          /**
           * Address odd `em`-unit font size rendering in all browsers.
           */

          code,
          kbd,
          pre,
          samp {
            font-family: monospace, monospace;
            font-size: 1em;
          }

          /* Forms
             ========================================================================== */

          /**
           * Known limitation: by default, Chrome and Safari on OS X allow very limited
           * styling of `select`, unless a `border` property is set.
           */

          /**
           * 1. Correct color not being inherited.
           *    Known issue: affects color of disabled elements.
           * 2. Correct font properties not being inherited.
           * 3. Address margins set differently in Firefox 4+, Safari, and Chrome.
           */

          button,
          input,
          optgroup,
          select,
          textarea {
            color: inherit; /* 1 */
            font: inherit; /* 2 */
            margin: 0; /* 3 */
          }

          /**
           * Address `overflow` set to `hidden` in IE 8/9/10/11.
           */

          button {
            overflow: visible;
          }

          /**
           * Address inconsistent `text-transform` inheritance for `button` and `select`.
           * All other form control elements do not inherit `text-transform` values.
           * Correct `button` style inheritance in Firefox, IE 8/9/10/11, and Opera.
           * Correct `select` style inheritance in Firefox.
           */

          button,
          select {
            text-transform: none;
          }

          /**
           * 1. Avoid the WebKit bug in Android 4.0.* where (2) destroys native `audio`
           *    and `video` controls.
           * 2. Correct inability to style clickable `input` types in iOS.
           * 3. Improve usability and consistency of cursor style between image-type
           *    `input` and others.
           */

          button,
          html input[type="button"], /* 1 */
          input[type="reset"],
          input[type="submit"] {
            -webkit-appearance: button; /* 2 */
            cursor: pointer; /* 3 */
          }

          /**
           * Re-set default cursor for disabled elements.
           */

          button[disabled],
          html input[disabled] {
            cursor: default;
          }

          /**
           * Remove inner padding and border in Firefox 4+.
           */

          button::-moz-focus-inner,
          input::-moz-focus-inner {
            border: 0;
            padding: 0;
          }

          /**
           * Address Firefox 4+ setting `line-height` on `input` using `!important` in
           * the UA stylesheet.
           */

          input {
            line-height: normal;
          }

          /**
           * It's recommended that you don't attempt to style these elements.
           * Firefox's implementation doesn't respect box-sizing, padding, or width.
           *
           * 1. Address box sizing set to `content-box` in IE 8/9/10.
           * 2. Remove excess padding in IE 8/9/10.
           */

          input[type="checkbox"],
          input[type="radio"] {
            box-sizing: border-box; /* 1 */
            padding: 0; /* 2 */
          }

          /**
           * Fix the cursor style for Chrome's increment/decrement buttons. For certain
           * `font-size` values of the `input`, it causes the cursor style of the
           * decrement button to change from `default` to `text`.
           */

          input[type="number"]::-webkit-inner-spin-button,
          input[type="number"]::-webkit-outer-spin-button {
            height: auto;
          }

          /**
           * 1. Address `appearance` set to `searchfield` in Safari and Chrome.
           * 2. Address `box-sizing` set to `border-box` in Safari and Chrome
           *    (include `-moz` to future-proof).
           */

          input[type="search"] {
            -webkit-appearance: textfield; /* 1 */
            -moz-box-sizing: content-box;
            -webkit-box-sizing: content-box; /* 2 */
            box-sizing: content-box;
          }

          /**
           * Remove inner padding and search cancel button in Safari and Chrome on OS X.
           * Safari (but not Chrome) clips the cancel button when the search input has
           * padding (and `textfield` appearance).
           */

          input[type="search"]::-webkit-search-cancel-button,
          input[type="search"]::-webkit-search-decoration {
            -webkit-appearance: none;
          }

          /**
           * Define consistent border, margin, and padding.
           */

          fieldset {
            border: 1px solid #c0c0c0;
            margin: 0 2px;
            padding: 0.35em 0.625em 0.75em;
          }

          /**
           * 1. Correct `color` not being inherited in IE 8/9/10/11.
           * 2. Remove padding so people aren't caught out if they zero out fieldsets.
           */

          legend {
            border: 0; /* 1 */
            padding: 0; /* 2 */
          }

          /**
           * Remove default vertical scrollbar in IE 8/9/10/11.
           */

          textarea {
            overflow: auto;
          }

          /**
           * Don't inherit the `font-weight` (applied by a rule above).
           * NOTE: the default cannot safely be changed in Chrome and Safari on OS X.
           */

          optgroup {
            font-weight: bold;
          }

          /* Tables
             ========================================================================== */

          /**
           * Remove most spacing between table cells.
           */

          table {
            border-collapse: collapse;
            border-spacing: 0;
          }

          td,
          th {
            padding: 0;
          }
        </style>
        <style>
          /*! Typebase.less v0.1.0 | MIT License */
          /* Setup */
          html {
            /* Change default typefaces here */
            font-family: serif;
            font-size: 137.5%;
            -webkit-font-smoothing: antialiased;
          }
          /* Copy & Lists */
          p {
            line-height: 1.5rem;
            margin-top: 1.5rem;
            margin-bottom: 0;
          }
          ul,
          ol {
            margin-top: 1.5rem;
            margin-bottom: 1.5rem;
          }
          ul li,
          ol li {
            line-height: 1.5rem;
          }
          ul ul,
          ol ul,
          ul ol,
          ol ol {
            margin-top: 0;
            margin-bottom: 0;
          }
          blockquote {
            line-height: 1.5rem;
            margin-top: 1.5rem;
            margin-bottom: 1.5rem;
          }
          /* Headings */
          h1,
          h2,
          h3,
          h4,
          h5,
          h6 {
            /* Change heading typefaces here */
            font-family: sans-serif;
            margin-top: 1.5rem;
            margin-bottom: 0;
            line-height: 1.5rem;
          }
          h1 {
            font-size: 4.242rem;
            line-height: 4.5rem;
            margin-top: 3rem;
          }
          h2 {
            font-size: 2.828rem;
            line-height: 3rem;
            margin-top: 3rem;
          }
          h3 {
            font-size: 1.414rem;
          }
          h4 {
            font-size: 0.707rem;
          }
          h5 {
            font-size: 0.4713333333333333rem;
          }
          h6 {
            font-size: 0.3535rem;
          }
          /* Tables */
          table {
            margin-top: 1.5rem;
            border-spacing: 0px;
            border-collapse: collapse;
          }
          table td,
          table th {
            padding: 0;
            line-height: 33px;
          }
          /* Code blocks */
          code {
            vertical-align: bottom;
          }
          /* Leading paragraph text */
          .lead {
            font-size: 1.414rem;
          }
          /* Hug a the block above you */
          .hug {
            margin-top: 0;
          }
        </style>
        <style>
          /*! PocketGrid 1.1.0
           * Copyright 2013 Arnaud Leray
           * MIT License
           */

          /* Border-box-sizing */
          .block-group, .block, .block-group:after, .block:after, .block-group:before, .block:before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
          }

          /* Clearfix */
          .block-group {
            *zoom: 1;
          }
          .block-group:before, .block-group:after {
            display: table;
            content: "";
            line-height: 0;
          }
          .block-group:after {
            clear: both;
          }

          .block-group {
            /* ul/li compatibility */
            list-style-type: none;
            padding: 0;
            margin: 0;
          }

          /* Nested grid */
          .block-group > .block-group {
            clear: none;
            float: left;
            margin: 0 !important;
          }

          /* Default block */
          .block {
            float: left;
            width: 100%;
          }
        </style>
        <style>
          /*!
           * "Fork me on GitHub" CSS ribbon v0.1.1 | MIT License
           * https://github.com/simonwhitaker/github-fork-ribbon-css
           */

          /* Left will inherit from right (so we don't need to duplicate code) */
          .github-fork-ribbon {
            /* The right and left classes determine the side we attach our banner to */
            position: absolute;

            /* Add a bit of padding to give some substance outside the "stitching" */
            padding: 2px 0;

            /* Set the base colour */
            background-color: #a00;

            /* Set a gradient: transparent black at the top to almost-transparent black at the bottom */
            background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, 0)), to(rgba(0, 0, 0, 0.15)));
            background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15));
            background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15));
            background-image: -ms-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15));
            background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15));
            background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15));

            /* Add a drop shadow */
            -webkit-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.5);
            -moz-box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.5);
            box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.5);

            /* Set the font */
            font: 700 13px "Helvetica Neue", Helvetica, Arial, sans-serif;

            z-index: 9999;
            pointer-events: auto;
          }

          .github-fork-ribbon a,
          .github-fork-ribbon a:hover {
            /* Set the text properties */
            color: #fff;
            text-decoration: none;
            text-shadow: 0 -1px rgba(0, 0, 0, 0.5);
            text-align: center;

            /* Set the geometry. If you fiddle with these you'll also need
               to tweak the top and right values in .github-fork-ribbon. */
            width: 200px;
            line-height: 20px;

            /* Set the layout properties */
            display: inline-block;
            padding: 2px 0;

            /* Add "stitching" effect */
            border-width: 1px 0;
            border-style: dotted;
            border-color: #fff;
            border-color: rgba(255, 255, 255, 0.7);
          }

          .github-fork-ribbon-wrapper {
            width: 150px;
            height: 150px;
            position: absolute;
            overflow: hidden;
            top: 0;
            z-index: 9999;
            pointer-events: none;
          }

          .github-fork-ribbon-wrapper.fixed {
            position: fixed;
          }

          .github-fork-ribbon-wrapper.left {
            left: 0;
          }

          .github-fork-ribbon-wrapper.right {
            right: 0;
          }

          .github-fork-ribbon-wrapper.left-bottom {
            position: fixed;
            top: inherit;
            bottom: 0;
            left: 0;
          }

          .github-fork-ribbon-wrapper.right-bottom {
            position: fixed;
            top: inherit;
            bottom: 0;
            right: 0;
          }

          .github-fork-ribbon-wrapper.right .github-fork-ribbon {
            top: 42px;
            right: -43px;

            -webkit-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            transform: rotate(45deg);
          }

          .github-fork-ribbon-wrapper.left .github-fork-ribbon {
            top: 42px;
            left: -43px;

            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            transform: rotate(-45deg);
          }

          .github-fork-ribbon-wrapper.left-bottom .github-fork-ribbon {
            top: 80px;
            left: -43px;

            -webkit-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            transform: rotate(45deg);
          }

          .github-fork-ribbon-wrapper.right-bottom .github-fork-ribbon {
            top: 80px;
            right: -43px;

            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            transform: rotate(-45deg);
          }
        </style>
        <style>
          .main {
            padding-top: 1rem;
          }
          .box {
            text-align: center;
          }
          .ip {
            letter-spacing: 0.2rem;
          }
        </style>
      </head>
      <body>

        <div class="github-fork-ribbon-wrapper right-bottom">
          <div class="github-fork-ribbon">
            <a href="https://github.com/khoan/myipis">Fork me on GitHub</a>
          </div>
        </div>

        <div class="block-group">
          <div class="block">
            <div class="main box">
              Your IP is
              <br>
              <h1 class="hug ip">
                #{req.ip}
              </h1>
              <time ng-app="clock">
                <my-current-time></my-current-time>
              </time>
            </div>
          </div>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.0/angular.min.js"></script>
        <script>
          angular.module("clock", [])
            .directive("myCurrentTime", ["$interval", "dateFilter", function($interval, dateFilter) {

              return function link(scope, element, attributes) {
                var format = "EEE, d MMM yyyy hh:mm:ss a Z";
                var timeoutId = $interval(updateTime, 1000);

                element.on("$destroy", function() {
                  $interval.cancel(timeoutId);
                });

                function updateTime() {
                  element.text(dateFilter(new Date, format));
                }
              }
            }]);
        </script>
      </body>
      </html>
      HTML
    end

    on default do
      res.write req.ip
    end
  end
end
