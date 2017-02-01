###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###
require "lib/mendthemind_helpers"
helpers MendthemindHelpers

# Reload the browser automatically whenever files change
configure :development do
   activate :livereload, apply_css_live: false, apply_js_live: false
end

activate :directory_indexes

set :markdown_engine, :redcarpet
set :markdown, :smartypants => true

activate :middleman_simple_thumbnailer

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify HTML on view
  activate :minify_html

  # Minify Javascript on build
  activate :minify_javascript
end

