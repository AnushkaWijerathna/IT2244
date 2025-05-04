# 2021 ICT 68
# Operating System IT2244 (P)
# 24/03/2025

# How To Take User Inputs Store them in variables and Output Results

# Login To your Linux Terminal TheN LogIn TO It
# Create a .sh file using The Command : touch day4_1.sh
# To Programe inside it give the Command : vi day4_1.sh
# Then insert The Command :

#This Will Display a Question
echo "Who are you?" 
#this will take a User input and Store it 
read name

#This Will Display a Question
echo "Enter Number 1"
#this will take a User input and Store it 

read x

#This Will Display a Question
echo "Enter Number 2" 
#this will take a User input and Store it 
read y

#This Will Display a Question
echo "Enter Number 3"
#this will take a User input and Store it 
read z


#This will Take The Summation Of The 3 Numbers
sum=$(($x + $y + $z))
#This Will Calculate The Average
avg=$((sum/3))


#This Will Output The Name
echo "Hi" $name

#This Will Output The Summation
echo "Summation: $sum" 

#This Will Output The Average
echo "Average: $avg"

#To Run The File 
# Allow Permission By Command :
# chmod 777 day4_1.sh

# To Run Give Command:
# ./day4_1.sh
