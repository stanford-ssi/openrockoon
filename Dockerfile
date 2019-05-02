FROM openjdk

COPY . /usr/src/app
WORKDIR /usr/src/app

EXPOSE 8000

ENV DISPLAY=0
ENV CLASSPATH=swing/bin:swing/lib/jogl/jogl-all.jar:swing/lib/iText-5.0.2.jar:swing/lib/jcommon-1.0.18.jar:swing/lib/jfreechart-1.0.15.jar:swing/lib/OrangeExtensions-1.2.jar:swing/lib/jogl/gluegen-rt.jar:core/bin:core/lib-extra/RXTXcomm.jar:core/resources:core/lib/opencsv-2.3.jar:core/lib/guice-3.0.jar:core/lib/guice-multibindings-3.0.jar:core/lib/javax.inject.jar:core/lib/aopalliance.jar:core/lib/slf4j-api-1.7.5.jar:core/lib/annotation-detector-3.0.2.jar:lib-test/hamcrest-core-1.3.0RC1.jar:lib-test/hamcrest-library-1.3.0RC1.jar:lib-test/jmock-2.6.0-RC2.jar:lib-test/jmock-junit4-2.6.0-RC2.jar:lib-test/junit-dep-4.8.2.jar:lib-test/test-plugin.jar:lib-test/uispec4j-2.3-jdk16.jar:swing/lib/logback-classic-1.0.12.jar:swing/lib/logback-core-1.0.12.jar:swing/resources:swing/lib/miglayout-4.0-swing.jar:swing/lib/rsyntaxtextarea-2.5.6.jar
RUN javac swing/src/net/sf/openrocket/startup/RockoonServer.java
CMD ["java", "net.sf.openrocket.startup.RockoonServer"]

#CMD java net.sf.openrocket.startup.RockoonServer -classpath swing/bin:swing/lib/jogl/jogl-all.jar:swing/lib/iText-5.0.2.jar:swing/lib/jcommon-1.0.18.jar:swing/lib/jfreechart-1.0.15.jar:swing/lib/OrangeExtensions-1.2.jar:swing/lib/jogl/gluegen-rt.jar:core/bin:core/lib-extra/RXTXcomm.jar:core/resources:core/lib/opencsv-2.3.jar:core/lib/guice-3.0.jar:core/lib/guice-multibindings-3.0.jar:core/lib/javax.inject.jar:core/lib/aopalliance.jar:core/lib/slf4j-api-1.7.5.jar:core/lib/annotation-detector-3.0.2.jar:lib-test/hamcrest-core-1.3.0RC1.jar:lib-test/hamcrest-library-1.3.0RC1.jar:lib-test/jmock-2.6.0-RC2.jar:lib-test/jmock-junit4-2.6.0-RC2.jar:lib-test/junit-dep-4.8.2.jar:lib-test/test-plugin.jar:lib-test/uispec4j-2.3-jdk16.jar:swing/lib/logback-classic-1.0.12.jar:swing/lib/logback-core-1.0.12.jar:swing/resources:swing/lib/miglayout-4.0-swing.jar:swing/lib/rsyntaxtextarea-2.5.6.jar



#/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/bin/java -Dvisualvm.id=96278573226191 "-javaagent:/Applications/IntelliJ IDEA.app/Contents/lib/idea_rt.jar=65014:/Applications/IntelliJ IDEA.app/Contents/bin" -Dfile.encoding=UTF-8 -classpath /Users/kaimarshland/Programming/ssi/openrockoon/swing/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/charsets.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/deploy.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/cldrdata.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/dnsns.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/jaccess.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/jfxrt.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/localedata.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/nashorn.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/sunec.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/sunjce_provider.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/sunpkcs11.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/ext/zipfs.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/javaws.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/jce.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/jfr.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/jfxswt.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/jsse.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/management-agent.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/plugin.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/resources.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre/lib/rt.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/ant-javafx.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/dt.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/javafx-mx.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/jconsole.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/packager.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/sa-jdi.jar:/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/lib/tools.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/jogl/jogl-all.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/iText-5.0.2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/jcommon-1.0.18.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/jfreechart-1.0.15.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/OrangeExtensions-1.2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/jogl/gluegen-rt.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/bin:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib-extra/RXTXcomm.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/resources:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/opencsv-2.3.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/guice-3.0.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/guice-multibindings-3.0.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/javax.inject.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/aopalliance.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/slf4j-api-1.7.5.jar:/Users/kaimarshland/Programming/ssi/openrockoon/core/lib/annotation-detector-3.0.2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/hamcrest-core-1.3.0RC1.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/hamcrest-library-1.3.0RC1.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/jmock-2.6.0-RC2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/jmock-junit4-2.6.0-RC2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/junit-dep-4.8.2.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/test-plugin.jar:/Users/kaimarshland/Programming/ssi/openrockoon/lib-test/uispec4j-2.3-jdk16.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/logback-classic-1.0.12.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/logback-core-1.0.12.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/resources:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/miglayout-4.0-swing.jar:/Users/kaimarshland/Programming/ssi/openrockoon/swing/lib/rsyntaxtextarea-2.5.6.jar net.sf.openrocket.startup.RockoonServer
