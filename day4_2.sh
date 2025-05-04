# 2021 ICT 68
# Operating System IT2244 (P)
# 24/03/2025

# How To Take User Inputs Store them in variables and Output Results

# Login To your Linux Terminal TheN LogIn TO It
# Create a .sh file using The Command : touch day4_1.sh
# To Programe inside it give the Command : vi day4_1.sh
# Then insert The Command :


# Exercise, read two numbers from user 
# print 
# addition,
# substration,
# multiplications
# division


echo "Enter number 1: "
read x
echo "Enter number 2: "
read y

addition=$(($x+$y))
substraction=$(($x-$y))
multiplication=$(($x*$y))
division=$(($x/$y))

echo "Addition: $addition"
echo "Substraction: $substraction"
echo "Multiplication: $multiplication"
echo "Division: $division"


#To Run The File 
# Allow Permission By Command :
# chmod 777 day4_2.sh

# To Run Give Command:
# ./day4_2.sh
