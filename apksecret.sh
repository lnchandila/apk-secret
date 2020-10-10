#!/bin/bash

apktool d $1 -o $1_file

grep -EHirn "(A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}" $1_file/ > aws_client_id.txt

grep -EHirn "amzn\.mws\.[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" $1_file/ > aws_mws_key.txt

grep -EHirn "(?i)aws(.{0,20})?(?-i)['\"][0-9a-zA-Z\/+]{40}['\"]" $1_file/ > aws-secret_key.txt

grep -EHirn "(eyJ|YTo|Tzo|PD[89]|aHR0cHM6L|aHR0cDo|rO0)[a-zA-Z0-9+/]+={0,2}" $1_file/ > base_64.txt 

grep -EHirn "cloudinary:\/\/[0-9]{15}:[0-9A-Za-z]+@[a-z]+" $1_file/ > cloudinary_basic_auth.txt

grep -EHirn "EAACEdEose0cBA[0-9A-Za-z]+" $1_file/ > fb_access_token.txt

grep -EHirn "(?i)(facebook|fb)(.{0,20})?['\"][0-9]{13,17}" $1_file/ > fb_clint_id.txt

grep -EHirn "(?i)(facebook|fb)(.{0,20})?(?-i)['\"][0-9a-f]{32}" $1_file/ > fb_secret_key.txt

grep -EHirn "(?i)github(.{0,20})?(?-i)['\"][0-9a-zA-Z]{35,40}" $1_file/ > git_hub.txt

grep -EHirn "AIza[0-9A-Za-z\\-_]{35}" $1_file/ > google_api_key.txt

grep -EHirn "(?i)(google|gcp|youtube|drive|yt)(.{0,20})?['\"][AIza[0-9a-z\\-_]{35}]['\"]" $1_file/ > google_cloud.txt

grep -EHirn "AIza[0-9A-Za-z\\-_]{35}" $1_file/ > google_drive_api.txt

grep -EHirn "[0-9]+-[0-9A-Za-z_]{32}\.apps\.googleusercontent\.com" $1_file/ > google_drive_Outh.txt

grep -EHirn "AIza[0-9A-Za-z\\-_]{35}" $1_file/ > gmail_api_key.txt

grep -EHirn "ya29\\.[0-9A-Za-z\\-_]+" $1_file/ > google_outh_token.txt

grep -EHirn "AIza[0-9A-Za-z\\-_]{35}" $1_file/ > youtube_api_key.txt

grep -EHirn "[h|H][e|E][r|R][o|O][k|K][u|U].{0,30}[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}" $1_file/ > heroku_api.txt

grep -EHirn "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}\b" $1_file/ > ipv4.txt

grep -EHirn "[0-9a-f]{32}-us[0-9]{1,2}" $1_file/ > mailchamp_api.txt

grep -EHirn "key-[0-9a-zA-Z]{32}" $1_file/ > mailgun_api.txt

grep -EHirn "(?<=mailto:)[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9.-]+" $1_file/ > mailto.txt

grep -EHirn "[a-f0-9]{32}" $1_file/ > md5_hash.txt

grep -EHirn "xox[baprs]-([0-9a-zA-Z]{10,48})?" $1_file/ > slack_token.txt

grep -EHirn "SK[0-9a-fA-F]{32}" $1_file/ > twilio_api.txt
 
grep -EHirn "https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)" $1_file/ > urls.txt

grep -EHirn "([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})" $1_file/ > emails.txt
