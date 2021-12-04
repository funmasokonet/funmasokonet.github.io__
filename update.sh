echo starting pelican
cd /home/pi/sites/fun/
/home/pi/sites/pelican/bin/pelican content
echo done with pelican
now=$(date)
msg="New Joke - $now"
cd output/
git add .
git commit -m "$msg"
git push https://funmasokonet:$FUNGITTOKEN@github.com/funmasokonet/funmasokonet.github.io.git --all
cd ..
echo done
