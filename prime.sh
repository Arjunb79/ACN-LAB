                    prime.sh                                 
echo "enter the number"
read n
f=0
for((i=2;i<=n/2;i++))
do
if [ $((n % i)) -eq 0  ]
then
echo "$n not prime"
f=1
break
fi
done
if [ $((f)) -eq 0 ]
then
echo "$n prime"
fi


