Prefix any url in your app with something.

 - `/cms/xxx -> /xxx` to your app
 - `/xxx -> /cms/xxx` from your app

    config.middleware.use('Rack::PathPrefixer', :prefix => 'cms')