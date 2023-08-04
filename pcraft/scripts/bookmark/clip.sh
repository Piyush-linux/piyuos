browser='brave '
file='/home/piyu/piyuos/pcraft/scripts/bookmark/sample.txt'
# 1. ask > doit
# 2.1 : fetch > select(n/all) > brow 
# 2.2 : insert > link > chk(exist)
echo "-- Clip --"
echo "1. fetch ?"
echo "2. Insert ?"
read -p ": " todo
# validate input : !1 || !2 || ' '
if [[ $todo -eq 1 ]]; then
  echo " "
  echo "@it @deno @node @ui @lang @blog"
  read -p "What do you want to fetch : " data
  a=$(grep "@$data" $file | awk '{print $1;}')
  echo "---"
  printf '%s\n' "${a[@]}"
  echo "---"
  read -p "Do you want to open on browser (y/n) : " ans
  [[ $ans = 'y' ]] && $browser $a || echo "---"
elif [[ $todo -eq 2 ]]; then
  read -p "link : " lnk 
  read -p "tag : " tag 
  chk=$(grep -w "$lnk" "$file")
  # echo "$chk"
  # echo "${#chk[0]}"
  [[ ${#chk[0]} = 0 ]] &&  echo "$lnk $tag" >> $file || echo "--- end ---"
else
  echo "error ..."
fi



