#! /bin/sh

raw_quote=$(curl --silent https://api.kanye.rest)

quote_status=$?

if [ $quote_status -eq 0 ]
then
  echo Kanye says: $(echo $raw_quote | jq '.quote')
fi
