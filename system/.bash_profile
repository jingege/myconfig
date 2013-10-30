#scripts
source /Users/jingege/Documents/scm/git/bashmarks/bashmarks.sh

#homes
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export GRADLE_HOME=/Users/jingege/Documents/opensource/tools/gradle/gradle-1.7
export HADOOP_HOME=/Users/jingege/Documents/opensource/middleware/hadoop/hadoop-1.0.4
export PIG_HOME=/Users/jingege/Documents/opensource/middleware/pig/pig-0.11.0
export HIVE_HOME=/Users/jingege/Documents/opensource/middleware/hive/hive-0.9.0
export HBASE_HOME=/Users/jingege/Documents/opensource/middleware/hbase/hbase-0.94.6
export STORM_HOME=/Users/jingege/Documents/opensource/middleware/storm/storm-0.8.2
export M2_HOME=/Users/jingege/Documents/opensource/tools/maven/apache-maven-3.1.0

#path
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$GRADLE_HOME/bin:$PIG_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin:$STORM_HOME/bin:$M2_HOME/bin:/Users/jingege/Documents/scripts

#other
#export SVN_EDITOR=/usr/bin/vi
export EDITOR='subl -w'

alias goagent="python /Users/jingege/Documents/opensource/other/goagent/goagent-b7a3a8f0553d/local/proxy.py"
alias ec2="ssh ubuntu@ec2-54-250-185-213.ap-northeast-1.compute.amazonaws.com -i ~/Downloads/billzhang.pem"
