CREATE DATABASE IF NOT EXISTS race_time;

use race_time;
CREATE TABLE race_time(
performance TIME NOT NULL DEFAULT '00:45:55'
);
INSERT INTO race_time ()values();

CREATE TABLE event_time(
event_time DATETIME NOT NULL,
event_timestamp TIMESTAMP NOT NULL
);

INSERT INTO event_time (event_time, event_timestamp)
  values('2042-6-3 9:55:33', '2037-01-01 11:20:20');
