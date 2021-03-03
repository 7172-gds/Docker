echo "Developer: Guselnikov Danil gr. 717-1"
echo "The calculation of the checksum"
echo "The program is designed to calculate the checksum of a file"
while :; do
echo "Please select a further action"
echo "1. Calculating the checksum and then writing it to a file"
echo "2. Exit"
read comand
	case $comand in
	1)
		echo "The selected checksum calculation"
		echo "You are in this directory"
		pwd;
		echo "Enter the path to the file for which the checksum will be calculated"
		read file1
		if [ -f $file1 ]
		then
			echo "Checksum file"
			md5sum $file1
			echo "Enter the path to the file where the received data will be written"
			read file2
			if [ -f $file2 ]
			then
				if [ -s $file2 ]
				then
					echo "The file already contains the data. Overwrite it?"
					echo "1. Yes"
					echo "2. No"
					read wrire
						case $write in
						1)
							md5sum $file1>$file2
							echo "File overwritten"
							;;
						2)
							echo "The file is not overwritten"
							;;
						esac
				else
					md5sum $file1>$file2
					echo "Data recorded"
				fi
			else
				md5sum $file1>$file2
				echo "Data recorded"
			fi
		else
			echo "No such file exists"
		fi
		;;

	2)
		echo "Exit"
		exit
		;;
	esac
done


