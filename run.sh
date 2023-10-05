album="913"
imgur_id="l6SNxu5"

git clone "https://gitlab.com/ntrungcn/$album.git"

cp "imgurbash2" "./$album"

cd $album

# ls | head -n 50 | xargs rm

for file in *; do
  ./imgurbash2 -l -a "$imgur_id" "$file" | grep -oP 'https://imgur\.com/\S+' >> index.html
done

cd ..

mv "./$album/index.html" ./

find . -type f -size +26M -exec rm {} \;
