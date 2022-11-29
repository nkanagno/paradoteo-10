#! /usr/bin/bash

# DELETES EVERY FILE EXCEPT c++-Auto-Compiler.sh and compiler.rec:
find . -type f -not \( -name 'c++-Auto-Compiler.sh' -or -name 'compiler.rec' \) -delete

# Showing current directory:
echo "my current directory:"
ls
sleep 1

# Reads the name of c++ file:
echo "type the name of your c++ file"
read file

# Creates an c++ empty file:
echo "creating a file c++.."
sleep 1
if [ -f "$file" ]; then
    rm $file
fi
touch $file

# Showing current directory:
echo "my current directory:"
ls
sleep 1

# Opens the c++ file
echo "opening the c++ that you created.."
vim $file

# Creates an txt empty file:
echo "compiling and executing $file..."
if [ -f "program_result.txt" ]; then
    rm program_result.txt
fi
touch program_result.txt

# Checks if the program is compiled and it writes the result inside program_result.txt using pipelining:
echo "Compiling result:
" | cat >> program_result.txt
if g++ $file -o file; then
    echo "Success!" | cat >> program_result.txt
    echo "
    " | cat >> program_result.txt
    echo "Your program:" | cat >> program_result.txt
    echo "
    " | cat >> program_result.txt
    ./file | cat >> program_result.txt
else
    echo "coundnt be compiled" | cat >> program_result.txt

fi

# Open the file that shows the compilers results:
echo "open program_result.txt..."
sleep 2
vim program_result.txt

# Showing current directory:
echo "my current directory:"
ls
sleep 2

# Confirms that this script runned with Success:
echo "FINISHED!!"
