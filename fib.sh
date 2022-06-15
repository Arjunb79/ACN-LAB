                                                                                   fib.sh                                                                                                
a=0
b=1
c=0

echo "enter the limit"
read n
echo "fibnocci series:"
echo "$a"
echo "$b"
for ((i=0;i<n;i++))
do
c=$((a+b))
echo "$c"
a=$b
b=$c
done






