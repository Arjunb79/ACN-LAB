echo "Enter a number"
read num

fact=1

while [ $num -gt 1 ]
do
  fact=$((fact * num))  #fact = fact * num
  num=$((num - 1))      #num = num - 1
done

echo $fact





----------------------------------------------
echo "enter the number"
read n
f=1
for((i=1;i<=n;i++))
do
f=$((f * i))
done
echo "fact:$f"




