from twitter.account import Account
from twitter.scraper import Scraper
import httpx
import json
import sys
import os

## sign-in with credentials
# email, username, password = ..., ..., ...
# account = Account(email, username, password)

## or, resume session using cookies
TWITTER_CT0=os.environ["TWITTER_CT0"]
TWITTER_TOKEN=os.environ["TWITTER_TOKEN"]
# https://localhost:8118
# scraper = Scraper(cookies={"ct0": CT0 , "auth_token": TOKEN})
scraper = Scraper(session=httpx.Client(proxy='https://localhost:8118'), cookies={"ct0": TWITTER_CT0 , "auth_token": TWITTER_TOKEN}, debug=10)
# account = Account(cookies={"ct0": TWITTER_CT0, "auth_token": TWITTER_TOKEN})

## or, resume session using cookies (JSON file)
# account = Account(cookies='twitter.cookies')
# followers = scraper.followers([14792434]) # fedex1
# followers = scraper.followers([244647486],debug=10) # saylor
# followers = scraper.followers([  10355572],debug=10) # queenoftheclick
followers = scraper.followers([  int(sys.argv[1])],debug=10) 
json.dump(followers,sys.stdout)
print()
