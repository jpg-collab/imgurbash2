cat <<EOL > ./credentials.conf
CLIENT_ID='5b4a8d5063c5a70'
CLIENT_SECRET='b5a7f7ecaa6ee0a2afde8f1817aef4abe186b9bf'
ACCESS_TOKEN='8925ed0f84d1a894822f6dd2df9ac8818ae025a7'
REFRESH_TOKEN='96ea0035a7ec9d341c9fb66424d931baf5c6320c'
TOKEN_EXPIRE_TIME='2011698986'
EOL

git clone https://gitlab.com/ntrungcn/923.git

for folder in */; do
  folder_name="${folder%/}"
  for file in "$folder"/*; do
    ./imgurbash2 -a "rWzTyF0" "$file"
  done
done
