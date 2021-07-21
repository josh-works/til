# Install and Troubleshoot ElasticSearch

I've had some trouble w/ElasticSearch. Here's troubleshooting steps:

```
$ elasticsearch

=> warning: no-jdk distributions that do not bundle a JDK are deprecated and will be removed in a future release
warning: no-jdk distributions that do not bundle a JDK are deprecated and will be removed in a future release
Exception in thread "main" java.lang.RuntimeException: starting java failed with [1]
output:

error:
Unrecognized VM option 'UseConcMarkSweepGC'
Error: Could not create the Java Virtual Machine.
Error: A fatal exception has occurred. Program will exit.
	at org.elasticsearch.tools.launchers.JvmErgonomics.flagsFinal(JvmErgonomics.java:126)
	at org.elasticsearch.tools.launchers.JvmErgonomics.finalJvmOptions(JvmErgonomics.java:88)
	at org.elasticsearch.tools.launchers.JvmErgonomics.choose(JvmErgonomics.java:59)
	at org.elasticsearch.tools.launchers.JvmOptionsParser.jvmOptions(JvmOptionsParser.java:137)
	at org.elasticsearch.tools.launchers.JvmOptionsParser.main(JvmOptionsParser.java:95)
```

```
brew info elasticsearch
brew install (listed_dependencies)

brew info elasticsearch
```

Sigh, this worked:

```
brew services start elasticsearch
```