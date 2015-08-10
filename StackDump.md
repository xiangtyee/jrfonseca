

# About #

Simple program to dump a stack trace and produce a minidump file when a child process misbehaves.

It does so by leveraging [Microsoft's Debugger Engine](http://msdn.microsoft.com/en-us/library/cc265851.aspx), which is part of [Microsoft's Debugging Tools for Windows](http://www.microsoft.com/whdc/devtools/debugging/default.mspx) and also used by Microsoft Visual Studio.

It is particularly useful for test automation, where there's nobody to click through the error dialog boxes.

## Features ##

  * it can trap:
    * unhandled exceptions
    * assertion failures
    * MessageBox() calls
    * abort() calls
  * dumps call stack, with all function arguments
  * can create a minidump
  * traces OutputDebugString() calls

## Example ##

This is StackDump's output for one of the included samples:
```
> stackdump.exe -z exception.dmp samples\exception.exe
uncaught exception - code c0000005 (first chance)
eax=00003039 ebx=7ffdc000 ecx=00000001 edx=00000008 esi=00000000 edi=00e1ff6c
eip=00404bb2 esp=00e1fc38 ebp=00e1fe84 iopl=0         nv up ei pl nz na po nc
cs=001b  ss=0023  ds=0023  es=0023  fs=003b  gs=0000             efl=00010202
*** WARNING: Unable to verify checksum for exception.exe
exception!_input_l+0xfc2:
00404bb2 8902            mov     dword ptr [edx],eax  ds:0023:00000008=????????
 # ChildEBP RetAddr  
00 00e1fe84 004015ae exception!_input_l(struct _iobuf * stream = 0x00e1fea4, unsigned char * format = 0x00476001 "i", struct localeinfo_struct * plocinfo = 0x00000000, char * arglist = 0x00e1ff04 "???")+0xfc2
01 00e1fed0 00401474 exception!vscan_fn(<function> * inputfn = 0x00403bf0, char * string = 0x00476004 "12345", char * format = 0x00476000 "%i", struct localeinfo_struct * plocinfo = 0x00000000, char * arglist = 0x00e1ff00 "???")+0x12e
02 00e1fef0 00401114 exception!sscanf(char * string = 0x00476004 "12345", char * format = 0x00476000 "%i")+0x24
03 00e1ff08 004010da exception!YetAnotherFunction(int i = 8)+0x24
04 00e1ff14 0040107b exception!MyWonderfulFunction(int AnInteger = 4, double ADouble = 5.5999999999999996, int * AnArray = 0x00e1ff48, char * AString = 0x0047600c "Hello", AnEnumType AnEnum = a (0), struct AStructType AStruct = struct AStructType, <function> * AFunction = 0x00401130)+0xa
05 00e1ff6c 00401787 exception!main(int argc = 1, char ** argv = 0x002331a8)+0x6b
06 00e1ffb8 0040165f exception!__tmainCRTStartup(void)+0x117
07 00e1ffc0 77e6f23b exception!mainCRTStartup(void)+0xf
08 00e1fff0 00000000 kernel32!BaseProcessStart+0x23
Creating exception.dmp - mini user dump
Dump successfully written
```

This sample's source code can be seen [here](http://code.google.com/p/jrfonseca/source/browse/samples/exception.c?repo=stackdump).

# Recent changes #

<wiki:gadget url="http://google-code-feed-gadget.googlecode.com/svn/trunk/gadget.xml" up\_feeds="http://code.google.com/feeds/p/jrfonseca/gitchanges/basic?repo=stackdump" width="500" height="340" border="0"/>

# Download #

StackDump can be downloaded [here](http://code.google.com/p/jrfonseca/downloads/list?q=stackdump).

Git repository available [here](http://code.google.com/p/jrfonseca/source/checkout?repo=stackdump).

# Usage #

```
stackdump [options] <command-line>

options:
  -? displays command line help text
  -ma create a full dump file (default is a minidump)
  -v enables verbose output from the debugger
  -y <symbols-path> specifies the symbol search path (same as _NT_SYMBOL_PATH)
  -z <crash-dump-file> specifies the name of a crash dump file to create
```

# Links #

Related software:
  * [ProcDump](http://technet.microsoft.com/en-us/sysinternals/dd996900.aspx) -- Procdump supposedly does a lot and more than StackDump, but I couldn't get it to create minidumps correctly. See also:
    * [ProcDump exits with weird chars in dump filename](http://forum.sysinternals.com/forum_posts.asp?TID=20409)
    * [Procdump generates dump name with question marks](http://forum.sysinternals.com/forum_posts.asp?TID=20630)
  * [ADplus](http://msdn.microsoft.com/en-us/library/cc265629.aspx)
  * [userdump](http://support.microsoft.com/kb/241215)