SELECT *
FROM hospital_visits
LIMIT 10;

-- Which hospitals have the worst waiting times?
SELECT
    "Hospital Name",
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time
FROM hospital_visits
GROUP BY "Hospital Name"
ORDER BY avg_wait_time DESC;

-- Which days have the longest waiting times?
SELECT
    "Day of Week",
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time
FROM hospital_visits
GROUP BY "Day of Week"
ORDER BY avg_wait_time DESC;

-- Does the nurse-to-patient ratio affect waiting time?
SELECT
    "Nurse-to-Patient Ratio",
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time
FROM hospital_visits
GROUP BY "Nurse-to-Patient Ratio"
ORDER BY avg_wait_time DESC;

--Do longer wait times reduce patient satisfaction?
SELECT
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time,
    ROUND(AVG("Patient Satisfaction"),2) AS avg_satisfaction
FROM hospital_visits;

-- Do patients with more urgent conditions get treated faster?
SELECT
    "Urgency Level",
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time
FROM hospital_visits
GROUP BY "Urgency Level"
ORDER BY avg_wait_time ASC;

-- What time of day has the longest hospital wait times?
SELECT
    "Time of Day",
    ROUND(AVG("Total Wait Time (min)"),2) AS avg_wait_time
FROM hospital_visits
GROUP BY "Time of Day"
ORDER BY avg_wait_time DESC;
