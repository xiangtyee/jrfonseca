# About #

Have you ever did mental math to figure out how to best fit a collection of data into a set of DVDs, trying to squeeze the most into every single DVD? It happens more and more to me, so I wrote a Python script to do it for me.

The algorithm used to efficiently find the largest path combinations below a threshold is inspired in the [apriori algorithm](http://en.wikipedia.org/wiki/Apriori_algorithm) for association rule discovery. Since the largest path combination is a superset of smaller combinations, we can start building those starting from single paths, combine those with the initial to make two-item sets while removing all larger than the threshold, then three-item, four-item, and so on; until no larger combination below the threshold can be found.

# Usage #

```
usage:
        mixnmatch.py [options] path ...

options:
  -h, --help            show this help message and exit
  -l LIMIT, --limit=LIMIT
                        total size limit
  -B SIZE, --block-size=SIZE
                        use this block size
  -s SHOW, --show=SHOW  number of combinations to show
  -v, --verbose         verbose output
```

# Example #

```
$ cd /dir/to/stuff/to/burn/in/dvds
$ mixnmatch.py *
4482695104      95.38%  xxx yyy zzz 
4480609827      95.33%  xxx aaa bbb
4397360001      93.56%  xxx ccc
...
$ growisofs -Z /dev/dvdrw xxx yyy zzz
```

# Download #

  * [Subversion repository](http://jrfonseca.googlecode.com/svn/trunk/mixnmatch/mixnmatch.py)

# Links #

  * [Original blog post](http://jrfonseca.blogspot.com/2006/03/mixnmatching.html)
  * [Python Cookbook Recipe](http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/475169)