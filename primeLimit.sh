  GNU nano 6.2                       prime1.sh                                 
echo "enter the limit"
read n
p=0
for((i=2;i<n;i++))
do
p=0
for((j=2;j<=i/2;j++))
do
if [ $((i%j)) -eq 0 ]
then
p=1
fi
done
if [ $p -eq 0 ]
then
echo "$i is prime"
fi
done



