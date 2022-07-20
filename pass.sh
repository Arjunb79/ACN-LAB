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
-----------------------------------------------------------------------------------------
#!/bin/sh
echo "Enter your password"
read password
len="${#password}"
if test $len -ge 8 ; then
	echo "$password" | grep -q [0-9]
	if test $? -eq 0 ; then
		echo "$password" | grep -q [A-Z]
		if test $? -eq 0 ; then
			echo "$password" | grep -q [a-z]
			if test $? -eq 0 ; then
				echo "Strong Password"
			else
				echo "Weak Password -> Should include a lower case letter."
			fi
		else
			echo "Weak Password -> Should include a capital case letter."
		fi
	else
		echo "Weak Password -> Should use numbers in your password."
	fi
else
	echo "Weak Password -> Password length should have at least 8 characters."
fi


