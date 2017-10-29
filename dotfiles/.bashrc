ANT_HOME=/usr/share/ant
export ANT_HOME

PATH=$ANT_HOME/bin:$PATH 
export PATH 

ANT_OPTS="-Xmx2224m -XX:MaxPermSize=3024m"
export ANT_OPTS
JAVA_OPTS="-Xmx2224m -XX:MaxPermSize=3024m"
export JAVA_OPTS


# Hadoop settings
HADOOP_HDFS_HOME=$HOME/hadoop/hadoop-hdfs-project/hadoop-hdfs/src/main
HADOOP_YARN_HOME=$HOME/hadoop/hadoop-yarn-project/hadoop-yarn
HADOOP_LIBEXEC_DIR=$HOME/hadoop/hadoop-hdfs-project/hadoop-hdfs-httpfs/src/main/libexec
export PATH=$PATH:$HADOOP_YARN_HOME/bin
export PATH=$PATH:$HADOOP_HDFS_HOME/bin
export PATH=$PATH:$HADOOP_LIBEXEC_DIR

export HADOOP_HOME=${HADOOP_HDFS_HOME}
export PATH=$PATH:$HADOOP_HOME/bin:$JAVA_PATH/bin:$HADOOP_HOME/sbin

export HADOOP_PREFIX=${HADOOP_HDFS_HOME}
export HADOOP_MAPRED_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=$HOME/hadoop/hadoop-common-project/hadoop-common/src/main/bin
export HADOOP_CONF_DIR=${HADOOP_HOME}/hadoop-common-project/hadoop-common/src/main/

# Always enable GREP colors
export GREP_OPTIONS='--color=auto'

# complete sudo and man-pages
complete -cf sudo man

#[ -n "$PS1" ] && source ~/.bash_profile;
