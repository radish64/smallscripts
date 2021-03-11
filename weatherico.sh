#!/bin/sh
result=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo)
cloud=$(echo "$result" | grep -i -c -E "cloud|fog|overcast" )
sun=$(echo "$result" | grep -i -c "clear" )
snow=$(echo "$result" | grep -i -c -E "snow|sleet" )
rain=$(echo "$result" | grep -i -c rain )
storm=$(echo "$result" | grep -i -c storm )
wind=$(echo "$result" | grep -i -c wind )
dead=$(echo "$result" | grep -c "°" )
[ "$dead" = 0 ] && exit 1
[ "$cloud" = 1 ] && icon=" "
[ "$sun" = 1 ] && icon=" "
[ "$snow" = 1 ] && icon=" "
[ "$rain" = 1 ] && icon=" "
[ "$storm" = 1 ] && icon=" "
[ "$wind" = 1 ] && icon=" "
echo "$icon $result"
