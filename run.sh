album="5478"
imgur_id="lKR8w0c"

git clone "https://gitlab.com/ntrungcn/$album.git"

cp "imgurbash2" "./$album"

cd $album

ls -a

result_links=()  # Tạo một mảng để lưu trữ các link kết quả

for file in *; do
  result=$(./imgurbash2 -l -a "$imgur_id" "$file")  # Chạy lệnh và lưu kết quả vào biến result
  result_links+=("$result")  # Thêm kết quả vào mảng
done

# In ra các link kết quả và ghi vào tệp
for link in "${result_links[@]}"; do
  echo "$link" >> /opt/buildhome/repo/index.html
done

cd ..

find . -type f -size +26M -exec rm {} \;
