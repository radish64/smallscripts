cloud=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep cloud | wc -l)
sun=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep "clear" | wc -l)
snow=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep snow | wc -l)
rain=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep rain | wc -l)
storm=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep storm | wc -l)
wind=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo | grep wind | wc -l)
result=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo)
case $cloud in
1)icon=" "
esac
case $sun in 
1)icon=" "
esac
case $snow in
1)icon=" "
esac
case $rain in
1)icon=" "
esac
case $storm in
1)icon=" "
esac
case $wind in
1)icon=" "
esac
echo "$icon $result"
