
require 'bundler'
Bundler.setup
Bundler.require
require 'rack/contrib/try_static' 
require 'rack/rewrite'

# Support links to old Wordpress site
use Rack::Rewrite do
  # r301('/connect', 'http://letsworkshopapp.heroku.com/connect')
end

use Rack::TryStatic, 
    :root => "app/_site",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially
run Rack::NotFound.new('app/_site/404.html')