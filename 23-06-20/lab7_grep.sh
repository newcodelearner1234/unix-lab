echo "Avatansh Awasthi"
echo "1947208"

echo "Menu driven shell script program to demonstrate grep"

unique_words_and_vowels()
{
	echo ""
	echo "Enter file name : "
	read file
	echo ""
	echo "Unique words : "
	grep -oEn '\w+' $file | sort | uniq 
	echo "Vowels with line number are : "
	grep -on [aeiouAEIOU] $file
	echo -n "Frequncy of vowels are : "
	grep -o [aeiouAEIOU] $file | wc -l
}

char_freq()
{	echo ""
	echo "Enter file name : "
	read file
	grep -o . $file | sort | uniq -c |sort -r > char_freq.txt
	echo "All characters with their : "
        cat char_freq.txt

}

find_n_replace()
{
	echo ""
	echo "Enter file name : "
	read file
	sed "s/Christ University/Christ(Deemed to be University)/g" $file > updated_file.txt
	cat updated_file.txt
}


while true
do
	echo ""
	echo "1. Write a shell program to find the number of unique words and vowels in a file along with line number."
	echo "2. Write a shell script to display the frequency of occurrence of each character present in the text document and display the character which has the maximum frequency of occurrences and store it in a separate file."
	echo "3. Write a shell script to replace the string Christ University as CHRIST (Deemed to be University) in the given text document."
	echo "4. Exit"
        echo " Enter choice :"
	read choice

	case "$choice" in

		1)
			unique_words_and_vowels
			;;

		2)
			char_freq
			;;

		3)
			find_n_replace
			;;

		4)
			break
			;;
		*)
			echo "Invalid Choice"
			;;
	esac
done
