# About #

This is a simple script that reads an HTML file, replacing special
`<?python` ... `?>` by the output of the enclosed Python code. Is particular useful to automate the generation of static HTML.

# Usage #

```
pyhtml.py [-e|--encoding <encoding>] [-o|--output <output>] [<input> ...]
```

There is a special object named `html` to simplify the generation of HTML tags.

# Example #

Let `example.pyhtml` be a file with the following content:
```
<html>
<head>
        <title>Example</title>
</head>
<body>
        <h1>Example</h1>
        <?python
                print html.a("Python homepage", href="http://python.org/")
        ?>
</body>
</html>
```

Then running with `pyhtml.py` will produce:
```
$ ./pyhtml.py example.pyhtml
<html>
<head>
        <title>Example</title>
</head>
<body>
        <h1>Example</h1>
        <a href="http://python.org/">Python homepage</a>

</body>
</html>
```

# Download #

  * [Subversion repository](http://jrfonseca.googlecode.com/svn/trunk/pyhtml/)

```
svn checkout http://jrfonseca.googlecode.com/svn/trunk/pyhtml/
```

# VIM syntax highlighting #

For proper syntax higlighting of .pyhtml files with VIM put the [pyhtml.vim](http://jrfonseca.googlecode.com/svn/trunk/pyhtml/pyhtml.vim) in
your ~/.vim/syntax folder and add the following lines to your ~/.vimrc:

```
if has("autocmd")
  autocmd BufRead,BufNewFile *.pyhtml set syntax=pyhtml
endif " has("autocmd")
```