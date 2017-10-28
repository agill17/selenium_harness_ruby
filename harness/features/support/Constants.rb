## Home page
module Locators

Home_page = {
  "id" =>
        {
          "radio"          {
            "bmw"    => "bmwradio",
            "benz"   => "benzradio",
            "honda"  => "hondaradio"
          },
          "checkbox" =>
          {
            "bmw"    => "bmwcheck",
            "benz"   => "benzcheck",
            "honda"  => "hondacheck"
          },
          "button" =>
          {
            "open_window"  => "openwindow",
            "mouse_hover"  => "mousehover",
            "hide_btn"     => "hide-textbox",
            "show_btn"     => "show-textbox",
            "alertbtn"     => "alertbtn"
          },
          "drop_down" =>
          {
            "car_dropdown" => "carselect",
            "multi_select" => "multiple-select-example"
          },
          "iframe" =>
          {
            "iframe"       => "courses-iframe"
          }
        },
  "text" => {
    "Apple"  => "Apple",
    "Orange" => "Orange",
    "Peach"  => "Peach",
    "BMW"    => "BMW",
    "Benz"   => "Benz",
    "Honda"  => "Honda",
    "open_window" => "Open Window",
    "open_tab" => "Open Tab"
  },
  "value" => {
    "bmw"    => "bmw",
    "benz"   => "benz",
    "honda"  => "honda"
  }
}
end
