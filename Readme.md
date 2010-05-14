Prefix any path in your app with something.

 - Converts any incoming path from /foo/xxx to /xxx
 - Converts links in body from /xxx to /foo/xxx

As Rails plugin: ` rails plugin install git://github.com/grosser/parallel_tests.git `  
As Gem: ` sudo gem install rack-path_prefixer `

    config.middleware.use('Rack::PathPrefixer', :prefix => 'foo')

The replace links in body part is just a gsub, so it wont cover all cases.



Author
======
###Contributors

 - [Mark Rambow](http://github.com/markrambow)

[Michael Grosser](http://pragmatig.wordpress.com)  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...