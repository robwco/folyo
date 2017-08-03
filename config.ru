require 'bundler'
Bundler.setup
Bundler.require
require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::TryStatic, 
    :root => "_site",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially
run Rack::NotFound.new('_site/404.html')