for filename in *;
do
    convert -crop 64x128+8+8 "${filename}" "export/${filename}"_1.PNG
    convert -crop 64x128+80+8 "${filename}" "export/${filename}"_2.PNG
    convert -crop 64x128+152+8 "${filename}" "export/${filename}"_3.PNG
    convert -crop 64x128+224+8 "${filename}" "export/${filename}"_4.PNG
done
