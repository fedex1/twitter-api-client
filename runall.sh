#!
# python3.10 twittertest.py   > followers.saylor
# python3.10 twittertest.py   > followers.saylor
# ID=244647486
ID=14792434 # fedex1
# followers = scraper.followers([  10355572],debug=10) # queenoftheclick
python3.10 twittertest.py ${ID}  > followers.${ID}.txt


# js-beautify followers.244647486.txt |grep screen_name |grep '"'| awk '{$1=$1};1' |sort > followers.saylor.list.txt
