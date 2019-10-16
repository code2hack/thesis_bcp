while getopts "p:t:h" type;do
case ${type}
        in
        p) pdftotext $2 - | perl -CIOED -p -e 's/[^(\p{Han})]//g' | wc -m;;
        t) cat $2 | perl -CIOED -p -e 's/[^(\p{Han})]//g' | wc -m;;
        h) echo "-p for pdf and -t for txt";;
        *) 
esac
done
if [ $OPTIND -eq 1 ];
then
pdftotext thesis.pdf - | perl -CIOED -p -e 's/[^(\p{Han})]//g' | wc -m;
fi
