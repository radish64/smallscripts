#!/bin/bash
result=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo)
cloud=$(echo "$result" | grep -E "cloud|fog" | wc -l)
sun=$(echo "$result" | grep "clear" | wc -l)
snow=$(echo "$result" | grep -E "snow|sleet" | wc -l)
rain=$(echo "$result" | grep rain | wc -l)
storm=$(echo "$result" | grep storm | wc -l)
wind=$(echo "$result" | grep wind | wc -l)
dead=$(echo "$result" | grep "°" | wc -l)
[[ "$dead" = 0 ]] && exit 1
[[ "$cloud" = 1 ]] && icon=" "
[[ "$sun" = 1 ]] && icon=" "
[[ "$snow" = 1 ]] && icon=" "
[[ "$rain" = 1 ]] && icon=" "
[[ "$storm" = 1 ]] && icon=" "
[[ "$wind" = 1 ]] && icon=" "
echo "$icon $result"
