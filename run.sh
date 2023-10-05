album = 913
imgur_id = l6SNxu5

git clone "https://gitlab.com/ntrungcn/$album.git"

cd $album

for file in *; do
  ./imgurbash2 -l -a "$imgur_id" "$file"
done
