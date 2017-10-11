#cat mysetenv.sh

#-------------------------------------------------------------------------------
#   - JAVA_HOME                   Full Path to Java Installation Root
#   - JAVA                        Full Path to java binary (to enable 64bit JDK)
#   - JAVA_OPTS                   Java options (e.g. for JVM memory increase
#-------------------------------------------------------------------------------
JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
JRE_HOME=$JAVA_HOME/jre
JAVA_BIN=$JAVA_HOME/bin
CLASSPATH=$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME PATH CLASSPATH



#-------------------------------------------------------------------------------
#   - OPENGROK_DISTRIBUTION_BASE  Base Directory of the OpenGrok Distribution
#   - OPENGROK_INSTANCE_BASE      Base Directory of the OpenGrok User Data Area
#   - EXUBERANT_CTAGS             Full Path to Exuberant CTags
#   - OPENGROK_CTAGS_OPTIONS_FILE Full path to file with extra command line
#                                 options for CTags program (for its --options
#-------------------------------------------------------------------------------
#  opengrok home directory
export OPENGROK_INSTANCE_BASE=/var/opengrok
export SCRIPT_DIRECTORY=$OPENGROK_INSTANCE_BASE/bin
export OPENGROK_DISTRIBUTION_BASE=$OPENGROK_INSTANCE_BASE/lib


#  source code root
#  export SRC_ROOT=$OPENGROK_INSTANCE_BASE/database/src
#  generated data root
export DATA_ROOT=$OPENGROK_INSTANCE_BASE/data
#
EXUB_CTAGS=/usr/bin/ctags


#-------------------------------------------------------------------------------
#   - OPENGROK_APP_SERVER         Application Server ("Tomcat" or "Glassfish")
#   - OPENGROK_WAR_TARGET_TOMCAT  Tomcat Specific WAR Target Directory
#   - OPENGROK_WAR_TARGET_GLASSFISH Glassfish Specific WAR Target Directory
#   - OPENGROK_WAR_TARGET         Fallback WAR Target Directory
#   - OPENGROK_TOMCAT_BASE        Base Directory for Tomcat (contains webapps)
#   - OPENGROK_GLASSFISH_BASE     Base Directory for Glassfish
#                                 (contains domains)
#-------------------------------------------------------------------------------
export OPENGROK_APP_SERVER=Tomcat
export OPENGROK_TOMCAT_BASE=/var/lib/tomcat8/
export OPENGROK_WAR_TARGET_TOMCAT=$OPENGROK_TOMCAT_BASE/webapps
export OPENGROK_WAR_TARGET=$OPENGROK_TOMCAT_BASE/webapps
export CATALINA_HOME=$OPENGROK_TOMCAT_BASE
