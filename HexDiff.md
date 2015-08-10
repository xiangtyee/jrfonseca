# About #

This is a very simple script to compute the diff of the hexadecimal dump of two binary files. It uses FIFO's to avoid dumping the whole files to disk.

# Usage #

```
hexdump.sh file1 file2
```

# Example #

```
$ ./hexdiff.sh hexdiff.sh ~/scripts/hexdiff.sh
--- /tmp/tmp.dJAOE14991 2007-03-28 23:53:54.000000000 +0900
+++ /tmp/tmp.djnGu14992 2007-03-28 23:53:54.000000000 +0900
@@ -3,8 +3,8 @@
 00000020  22 0a 0a 46 49 46 4f 31  3d 60 6d 6b 74 65 6d 70  |"..FIFO1=`mktemp|
 00000030  60 0a 46 49 46 4f 32 3d  60 6d 6b 74 65 6d 70 60  |`.FIFO2=`mktemp`|
 00000040  0a 0a 72 6d 20 2d 66 20  22 24 46 49 46 4f 31 22  |..rm -f "$FIFO1"|
-00000050  0a 6d 6b 66 69 66 6f 20  22 24 46 49 46 4f 31 22  |.mkfifo "$FIFO1"|
-00000060  0a 72 6d 20 2d 66 20 22  24 46 49 46 4f 32 22 0a  |.rm -f "$FIFO2".|
+00000050  0a 72 6d 20 2d 66 20 22  24 46 49 46 4f 32 22 0a  |.rm -f "$FIFO2".|
+00000060  6d 6b 66 69 66 6f 20 22  24 46 49 46 4f 31 22 0a  |mkfifo "$FIFO1".|
 00000070  6d 6b 66 69 66 6f 20 22  24 46 49 46 4f 32 22 0a  |mkfifo "$FIFO2".|
 00000080  0a 68 65 78 64 75 6d 70  20 2d 43 20 22 24 31 22  |.hexdump -C "$1"|
 00000090  20 3e 20 22 24 46 49 46  4f 31 22 20 26 0a 68 65  | > "$FIFO1" &.he|
```

# Download #

  * [Subversion Repository](http://jrfonseca.googlecode.com/svn/trunk/hexdiff/hexdiff.sh)

# Requirements #

  * The **hexdump** and **mkfifo** commands.