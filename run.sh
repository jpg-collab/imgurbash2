album="366"
imgur_id="lLOApvK"

git clone "https://gitlab.com/ntrungcn/$album.git"

cp "imgurbash2" "./$album"

cd $album

for file in *; do
  ./imgurbash2 -l -a "$imgur_id" "$file"
done

cd ..

find . -type f -size +26M -exec rm {} \;
