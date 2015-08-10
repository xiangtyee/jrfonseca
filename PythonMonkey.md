# About #

Python Monkey is an Eclipse plugin that adds support for [Python language](http://www.python.org/) to the [Eclipse Monkey plugin](http://www.eclipse.org/dash/), using [Jython](http://www.jython.org/).

# Features #

  * It's Python -- an OOP language that doesn't require you to declare variables or type braces, and it comes with an extensive library.
  * Access and extend any package in any loaded bundle without having to implement a DOM.
  * `sys.stdout` and `sys.stderr` are redirected to a console.

# Screenshot #

![![](http://wiki.jrfonseca.googlecode.com/git/pythonmonkey_small.png)](http://wiki.jrfonseca.googlecode.com/git/pythonmonkey.png)

# Download #

  * [Python Monkey 0.1.0](http://jrfonseca.googlecode.com/files/pythonmonkey-0.1.0.zip)
    * Just unzip into your eclipse installation directory, or an eclipse extension directory.
  * [Git repository](http://code.google.com/p/jrfonseca/source/checkout?repo=pythonmonkey)
    * You'll also need to install [Jython](http://www.jython.org/) and copy `jython.jar` and `Lib` into the `org.jrfonseca.pythonmonkey` directory.

# Usage #

See the [example project](http://code.google.com/p/jrfonseca/source/browse/?repo=pythonmonkey#hg/org.jrfonseca.pythonmonkey-examples/scripts) for more information.

# To do #

  * Redirect `sys.stdin` to console input.
  * Implement some of the Javascript DOMs.
  * Split Jython into a separate plugin.

# Links #

About Eclipse Monkey:
  * [Project Dash](http://www.eclipse.org/dash/)
  * [Dynamic Scripting Lands in Europa: A Profile of Eclipse Monkey](http://www.devx.com/Java/Article/35173)
  * [Aptana Monkey](http://www.aptana.com/docs/index.php/About_Eclipse_Monkey)

Related work:
  * [Scripting Pydev with Jython](http://fabioz.com/pydev/manual_articles_scripting.html)
  * [Groovy Monkey](http://groovy.codehaus.org/Groovy+Monkey)

Other scripting approaches for Eclipse:
  * [Enhance Eclipse RCP with Scripting](http://www.devx.com/Java/Article/34545)
  * [EclipseShell](http://eclipse-shell.sourceforge.net/)