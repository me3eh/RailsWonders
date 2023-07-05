# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "highlight.js/lib/core", to: "https://ga.jspm.io/npm:highlight.js@11.8.0/es/core.js"
pin "highlight.js/lib/languages/ruby", to: "https://ga.jspm.io/npm:highlight.js@11.8.0/es/languages/ruby.js"
pin "highlight.js/lib/languages/xml", to: "https://ga.jspm.io/npm:highlight.js@11.8.0/es/languages/xml.js"
pin "tailwindcss-stimulus-components", to: "https://ga.jspm.io/npm:tailwindcss-stimulus-components@3.0.4/dist/tailwindcss-stimulus-components.modern.js"
pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@1.6.6/lib/esm/index.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
