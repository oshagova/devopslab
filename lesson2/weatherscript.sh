#!/bin/bash
  appid={API key}
  cur=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=Gomel,%20BY&units=metric&appid="$appid"")
  weather=$(echo $cur | jq ."weather[]|.main" | sed "s/\"//g")
  temp=$(echo $cur | jq ."main|.temp")
  feels=$(echo $cur | jq ."main|.feels_like")
echo "Current weather in Gomel:  $weather"
echo "Temperature is $temp, but feels like $feels" 
