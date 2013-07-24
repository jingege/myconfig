#scripts
source /Users/jingege/Documents/scm/git/bashmarks/bashmarks.sh

#homes
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export GRADLE_HOME=/Users/jingege/Documents/opensource/tools/gradle-1.3
export HADOOP_HOME=/Users/jingege/Documents/opensource/middleware/hadoop/hadoop-1.0.4
export PIG_HOME=/Users/jingege/Documents/opensource/middleware/pig/pig-0.11.0
export HIVE_HOME=/Users/jingege/Documents/opensource/middleware/hive/hive-0.9.0
export HBASE_HOME=/Users/jingege/Documents/opensource/middleware/hbase/hbase-0.94.6

#path
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$GRADLE_HOME/bin:$PIG_HOME/bin:$HIVE_HOME/bin:$HBASE_HOME/bin

#other
#export SVN_EDITOR=/usr/bin/vi
export EDITOR='subl -w'

alias goagent="python3 /Users/jingege/Documents/opensource/other/goagent/goagent-goagent-1b75ea7/local/proxy.py"
