base=/system
export CLASSPATH=$base/framework/samplewindow.jar

exec app_process $base/bin understanding.wms.samplewindow.SampleWindow "$@"
