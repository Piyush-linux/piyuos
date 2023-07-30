# 5s = 1 speed = [ 10 block ] 

speed=1
read -p "timer 5 10 30 : " tim

first
speed=$(echo "scale=2 ; ${tim}/100" | bc -l)
# speed=$(( $tim / 10 ))
echo $speed

echo -n "["
for ((i = 0 ; i <= 100 ; i+=10)); do
  sleep $(($speed * ))
  echo -n "#####"
done
echo -n "]"
echo