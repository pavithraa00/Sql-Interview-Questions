-- Problem: Bikes Last Used
-- Question ID: 10176
-- Difficulty: Easy
-- Pattern: GROUP BY + AGGREGATION
-- Companies: Lyft, DoorDash
-- Source: StrataScratch

/*
Problem Statement:
Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.
*/

-- Dataset

/*
Table: dc_bikeshare_q1_2012
Columns: duration, duration_seconds, start_time, start_station,start_terminal, end_time, end_station, end_terminal,bike_number, rider_type, id
*/

-- Sample Data (Partial)
bike_number |    start_time       |    end_time
  W00576    | 2012-03-25 10:30:00 | 2012-03-25 10:40:00
  W00011    | 2012-03-28 18:59:00 | 2012-03-28 19:11:00
  W01215    | 2012-03-12 22:30:00 | 2012-03-12 22:37:00


-- Solution

SELECT bike_number , MAX(end_time) AS last_used
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY last_sed DESC;


-- Output 

/*
bike_number | last_time_used
--------------------------------
W01278      | 2012-03-31 19:28:00
W01097      | 2012-03-31 15:37:00
W00270      | 2012-03-31 12:10:00
...
*/
