default: run

openjdk-10_osx-x64_bin.tar.gz:
	wget https://download.java.net/java/GA/jdk10/10/binaries/openjdk-10_osx-x64_bin.tar.gz

jdk-10.jdk: openjdk-10_osx-x64_bin.tar.gz
	tar xfz openjdk-10_osx-x64_bin.tar.gz

Test.class: jdk-10.jdk
	./jdk-10.jdk/Contents/Home/bin/javac mytest/Test.java

run: Test.class
	./jdk-10.jdk/Contents/Home/bin/java mytest.Test
