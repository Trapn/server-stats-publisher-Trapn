# Server Stats Publisher Assignments

Create a Ruby script that publishes one of the following stats as a JSON string (using the given formats) via MQTT. Create a cron job for the given stat as specified below.
* free disk space: `{"free_space": 33.8, "unit": "GB"}`
    * Publish every day at 9AM
* number of logged in users: `{"logged_in_users": 12}`
    * Publish every minute
* network stats: `{"received": 1258452, "transmitted": 148558", "unit": "MB", "interface": "eth0"}`
    * Publish every 30 minutes on a weekday
* average load (`/proc/loadavg`): `{"average_load": 0.33}`
    * Publish every minute between 9AM and 5PM  
    ** The needed cronjob for this is:  ``` * 9-17 * * * ``` **

Every student is assigned a single stat in the lab.

Publish to the `labict.be` broker and use the topic `linux/stats/<stat>` where `<stat>` is a descriptive name you choose for your stats. Make sure to document it inside this `README.md`

Complete this `README.md` file stating how to setup the scripts and what cron jobs to add. No `README.md` no credits!
