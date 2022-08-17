for i in ./*.fna
do
	echo $i
	tr -d '\n' < $i |  egrep -o "TAAA(T|A)(.)(T|A)(G|A)(.)(C|A)GGT|ACC(T|G)(.)(T|C)(T|A)(.)(T|A)TTTA" | wc -l
done
