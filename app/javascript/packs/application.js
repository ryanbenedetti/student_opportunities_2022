// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require bootstrap-sprockets
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require jquery-tablesorter
//= require_tree .

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


$(document).ready(function() {
    $('table').tablesorter({
       headers: {
               2: { 
                  // disable levels by setting the property sorter to false 
                  sorter: false 
                },
  
               4: {
                  // disable citizenship by setting the property sorter to false
                  sorter: false
                } 
      }
    });
    $('table').stickyTableHeaders();
  });
  
