sudo cp ~/.m2/repository/joda-time/joda-time/2.3/joda-time-2.3.jar /usr/lib/hadoop/lib
hadoop jar ./target/MRSessionize-1.0-SNAPSHOT.jar com.hadooparchitecturebook.MRSessionize /etl/BI/casualcyclist/clicks/deduplogs/year=2014/month=10/day=10/* /etl/BI/casualcyclist/clicks/sessionizedlogs/year=2014/month=10/day=10

