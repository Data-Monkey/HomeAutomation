#!/bin/bash
# Script to forward stats to influx db for graphing in grafana.

# add script to cron tab every minute

# InfluxDB Stats 1 Minute
# * * * * * /home/pi/pistats/forwards_stats.sh > /dev/null 2>&1

#
# Set Vars
# Influx User/PW need to be defined as environment variables (to keep them out of github)
#
DBURL=http://192.168.2.130:8086
DBNAME=statistics
DEVICE="GATE-PI"
CURDATE=`date +%s`
USER=$INFLUX_USER
PASSWORD=$INFLUX_PW

H=$(date +%-H)
M=$(date +%-M)

RawFile=/home/pi/pistats/raw.txt
PrevStats=/home/pi/pistats/prev_stats.txt


#
# DNS Stats
#

curl "http://pi.hole/admin/api.php?summaryRaw" > $RawFile

currentBlocked=`jq ".ads_blocked_today" $RawFile`
currentQueries=`jq ".dns_queries_today" $RawFile`
currentDomains_Blocked=`jq ".domains_being_blocked" $RawFile`
currentPercent=`jq ".ads_percentage_today" $RawFile`

# read previos results
if [[ -f $PrevStats ]] ; then
	lastBlocked=`cat $PrevStats | awk '{print $2}'`
	lastQueries=`cat $PrevStats | awk '{print $3}'`
else
  lastBlocked=0
  lastQueries=0
fi

# calculate difference
diffBlocked=$((currentBlocked-lastBlocked))
diffQueries=$((currentQueries-lastQueries))

# avoid negative (due to the rolling windows or the cutover at midnight
if [ ${diffBlocked} -le 0 ] ; then diffBlocked=0 fi
if [ ${diffQueries} -le 0 ] ; then diffQueries=0 fi

# send to influx
curl -is -XPOST "$DBURL/write?db=$DBNAME&u=$USER&p=$PASSWORD" --data-binary "DNSStats,Device=${DEVICE} BlockedQueries=${diffBlocked},TotalQueryReceived=${diffQueries},PercentBlocked=${currentPercent} ${CURDATE}000000000" >/dev/null 2>&1

# write stats to file
echo "data "$currentBlocked $currentQueries $currentPercent > $PrevStats

# remove temp files
rm $RawFile

exit 0
