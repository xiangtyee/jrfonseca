# About #

RSS is quite useful, but sometimes one is only interested in a subset of the news items. This script aggregates items from several feeds using a set of regular expressions.

The script is written in Python and it relies on the [RSS.py by Mark Nottingham](http://www.mnot.net/python/RSS.py).

# Usage #

```
usage:
        rssfilter.py [options] url ...

options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -t TITLE, --title=TITLE
                        Title for the feed
  -d DESC, --desc=DESC  Description for the feed
  -l LINK, --link=LINK  Link for the feed
  -i INCLUDE, --include=INCLUDE
                        Regular expression
  -x EXCLUDE, --exclude=EXCLUDE
                        Regular expression
```

# Example #

```
./rssfilter.py -i Linux -x Microsoft http://rss.slashdot.org/Slashdot/slashdot
```

# Download #

  * [Subversion repository](http://jrfonseca.googlecode.com/svn/trunk/rssfilter/)