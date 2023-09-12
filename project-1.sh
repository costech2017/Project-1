#!/bin/bash
#This Bash scrip will create a file, Encrypt and Decrypt the file
echo "Encryption and Decryption of file"
echo
echo "Please select an operation:"
choice="Encrypt Decrypt"

select option in $choice; do

       if [ $REPLY = 1 ];
then
       echo "You have selected Encryption."
       read -p "Enter the file Name: " file
       

       gpg -c $file
       echo "This file has been Encrypted."
else
       echo "You have selected Decryption."
       read -p "Enter the file name: " file2

       gpg -d $file2
       echo "this file, $name2 has been Decrypted."
       exit

fi
done        