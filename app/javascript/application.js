// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import hljs from 'highlight.js/lib/core';
import ruby from 'highlight.js/lib/languages/ruby';
import xml from 'highlight.js/lib/languages/xml';
import { Application } from "@hotwired/stimulus"

const application = Application.start();

// Import and register all TailwindCSS Components
import { Dropdown } from "flowbite"
Turbo.session.drive = false

application.register('dropdown', Dropdown)

hljs.registerLanguage("ruby", ruby)
hljs.registerLanguage("xml", xml)
hljs.highlightAll();

