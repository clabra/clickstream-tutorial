-- Need a later version of a distribution like CDH4.5.0+ for using Parquet Hive out of the box
-- TODO: processed_log is a better name for this table.
DROP TABLE apache_log_parquet;

CREATE EXTERNAL TABLE apache_log_parquet(
        IP              STRING,
        t	        STRING,
        URL             STRING,
        referrer        STRING,
        user_agent      STRING,
	session_id	STRING)
PARTITIONED BY (
	year            INT,
	month 		INT,
	day 		INT)
ROW FORMAT SERDE 'parquet.hive.serde.ParquetHiveSerDe'
STORED AS
INPUTFORMAT "parquet.hive.DeprecatedParquetInputFormat"
OUTPUTFORMAT "parquet.hive.DeprecatedParquetOutputFormat"
LOCATION '/data/bikeshop/clickstream';
