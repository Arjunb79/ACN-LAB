echo "enter the pasword"
read pass
len="${#pass}"
if [ $len -ge 8 ]
then
echo "$pass" | grep -q [0-9]
if test $? -eq 0
then
echo "$pass" | grep -q [A-Z]
if test $? -eq 0
then
echo "$pass" | grep -q [a-z]
if test $? -eq 0
then
echo "strong password" 
else
echo "weak ->lowercase"
fi
else
echo "weak->uppercase"
fi
else
echo "weak->use number"
fi
else
echo "weak->8 letter"
fi



