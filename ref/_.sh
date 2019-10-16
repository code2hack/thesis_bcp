for old in *.pdf; do
        new=$(echo $old | sed -e 's/ /_/g')
        mv "$old" "$new"
done
