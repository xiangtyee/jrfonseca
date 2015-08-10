# About #

This is a very simple script to extract URLs from a web page.

# Requirements #

  * [lynx](http://lynx.browser.org/)

# Script #

**url-extract.sh**:
```
#!/bin/sh

for URL
do
	lynx -dump "$URL" | sed -n -e '/^References$/,$s/^ *[0-9]\+\. \+//p' | sed -e 's/ /%20/g'
done
```

# Usage #

Usage is straightforward:
```
url-extract.sh <url> ...
```
but I find its real usefulness when combining with `grep`, `xargs`, and `wget`, to download only the URLs containined in a page that match a certain regular expression:
```
url-extract.sh <url> | grep <regexp> | xargs wget
```