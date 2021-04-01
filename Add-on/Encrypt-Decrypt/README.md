"Encrypt/Decrypt" the usb key
------------------------------------------
first add-on you should put on your usb key is a system that "encrypt" the file on the usb key to force the user to accept the UAC.
basically it's very simple, you just need to do the following instruction :

1) Download the files in the directory and past it at the same directory than the rest of the program
2) place some files on the trapped usb key
3) copy the name of the files in the encrypt/decrypt file instead of "file1" ; "file2" ; "file3".... 
4) and obviusly put the extension instead of ".extension" example : "file1.extension" become "image.jpg"
5) you should also replace the PATH because i use mine but if you key use "F:\" you need to replace "I:\" into "F:\" (i know this is very hard to understand x)) 
------------------------------------------
Now you need to put some line in the base main code

open "Start+PB" with a text editor ([notepad work !](https://bytegate.io/wp-content/uploads/open-With-Notepad.png)) and copy this line "start /min EncryptUSB.bat" at [this location](https://imgur.com/8eR7Uri)

now you need to open "main.bat" as you open "Start+PB" and copy this line "start /min DecryptUSB.bat" at [this location](https://imgur.com/0PmhGQu)

**As with everything else here, do NOT use these files to malicious purposes.**
