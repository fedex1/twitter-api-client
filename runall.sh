#!
DATE=$(date +%Y-%m-%d)
DATE_MONTH=$(date +%Y-%m)
DATE_PREVIOUS_MONTH=$(date +%Y-%m -d '30 days ago')
DATE_30_DAYS_FROM_NOW=$(date +%Y-%m-%d -d '30 days')
DATE_UNDERSCORE=$(date +%Y_%m_%d)
DATESQL=$(date +%Y_%m_%d)
DATESQL_YESTERDAY=$(date +%Y_%m_%d -d 'yesterday')
DATE_YEAR_AGO=$(date +%Y-%m-%d -d 'last year')
DATE_YESTERDAY=$(date +%Y-%m-%d -d 'yesterday')
DATE_TOMORROW=$(date +%Y-%m-%d -d 'tomorrow')
# echo $(urlencode $DATE_YEAR_AGO)
# exit
YEAR=$(date +%Y)
NODE=$(uname --nodename)

TIMEBEGIN=$(date +"%s")

OUTFILE=${DATE}.${TIMEBEGIN}

# python3.10 twittertest.py   > followers.saylor
# python3.10 twittertest.py   > followers.saylor
# ID=244647486
ID=14792434 # fedex1
# ID=244647486 # saylor
LOGFILE=followers.${ID}.twitterbot.log.${NODE}.${DATE}.${TIMEBEGIN}.txt
# followers = scraper.followers([244647486],debug=10) # saylor
# followers = scraper.followers([  10355572],debug=10) # queenoftheclick
# python3.10 twittertest.py ${ID}  > followers.${ID}.txt
python3.10 twittertest.py ${ID}  > ${LOGFILE}


# js-beautify followers.244647486.txt |grep screen_name |grep '"'| awk '{$1=$1};1' |sort > followers.saylor.list.txt
# grep -v DEBUG followers.14792434.twitterbot.log.ralph-desktop.2024-02-07.1707319577.txt |js-beautify |grep screen_name |grep '"'| awk '{$1=$1};1' |sort > followers.fedex1.${OUTFILE}.list.txt

# cat followers.saylor*list.txt |sort |uniq > MASTER.followers.saylor.list.txt
