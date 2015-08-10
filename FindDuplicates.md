# About #

This is a script that prints the names of duplicate files found among the arguments.

Note that since it relies on MD5 hash values for efficient comparison, it is possible to give erroneous result if two files share the same MD5
> hash value.

# Usage #

```
find-duplicates.sh path ...
```

# Example #

```
$ find-duplicates/find-duplicates.sh
./Makefile
./.svn/text-base/Makefile.svn-base

./crc32.c
./.svn/text-base/crc32.c.svn-base

./crc32.sh
./.svn/text-base/crc32.sh.svn-base
```

# Download #

  * [Subversion repository](http://jrfonseca.googlecode.com/svn/trunk/find-duplicates/find-duplicates.sh)