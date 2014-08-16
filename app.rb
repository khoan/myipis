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
          .ip {
            text-align: center;
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
            <div class="ip">
              #{req.ip}
            </div>
          </div>
        </div>

      </body>
      </html>
      HTML
    end

    on default do
      res.write req.ip
    end
  end
end
