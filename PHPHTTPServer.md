# Introduction #

PHPHTTPServer.py is an adaptation of [CGIHTTPServer](http://docs.python.org/lib/module-CGIHTTPServer.html)  module included in the Python standard library, that dispatches PHP pages to the PHP CGI interpreter.

It doesn't require any configuration so it can be used to quickly test PHP pages locally before uploading to web server.

# Requirements #

  * Python (tested with version 2.4)
  * [PHP CGI interpreter](http://www.php.net/) (tested with version 5.0)

# Usage #

```
cd /path/to/www/root
PHPHTTPServer.py [port]
```

# Download #

  * [Subversion repository](http://jrfonseca.googlecode.com/svn/trunk/phphttpserver/PHPHTTPServer.py)