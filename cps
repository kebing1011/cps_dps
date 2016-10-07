
#!/bin/bash

function Usage()
{
	echo "CPS(1) compress file to .tar.gz .tar.bz2 .tar .zip .rar .7z file"
	echo "Usage:"
	echo "      cps [file_or_dir] [compressed_file_name]"
	echo "example:"
	echo "         to zip     :  cps file1 file2.zip"
	echo "         to tar     :  cps file1 file2.tar"
	echo "         to tar.gz  :  cps file1 file2.tar.gz"
	echo "         to tar.bz2 :  cps file1 file2.tar.bz2"
	echo "         to rar     :  cps file1 file2.rar"
	echo "         to 7z      :  cps file1 file2.7z"
}

if [ -z "$1" -o -z "$2" ]; then
	Usage
	exit
fi

if [ ! -f "$1" -a ! -d "$1" ]; then
	echo "$1: No such file or directory"
	exit		
fi


  if [ -n "$(echo "$2" | grep ".tar.gz$")" ]; then
	tar -czvf "$2" "$1"	
elif [ -n "$(echo "$2" | grep ".tar.bz2$")" ]; then
	tar -cjvf "$2" "$1"
elif [ -n "$(echo "$2" | grep ".tar$")" ]; then
	tar -cvf "$2" "$1"
elif [ -n "$(echo "$2" | grep ".zip$")" ]; then
	zip -r "$2" "$1"
elif [ -n "$(echo "$2" | grep ".rar$")" ]; then
	rar a "$2" "$1"
elif [ -n "$(echo "$2" | grep ".7z$")" ]; then
	7z a "$2" "$1"
else
	echo "cps dosn't compress this file to $2"
	echo "support .tar.gz .tar.bz2 .tar .zip .rar .7z only."	
fi
