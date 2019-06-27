 #!/bin/bash
#Remove images directory if existe then create it in anycase
images_dir=~/Documents/CIMBibImages
if [ -d  $images_dir ]
then
rm -rf $images_dir 
fi
mkdir ~/Documents/CIMBibImages
#Collect all pwb libraries. Create a pharo image for each. launch it, generate the pwb library mooseModel in the image.
# Save and close the image when the model generation finish
 find ~/Documents/Bibs -type d  -maxdepth 1| while read line;
    do
   
        image_dir= cp -r ~/Documents/Pharo/images/PWBModelImage  $images_dir/'PWB'$(basename $line)
        image_dir=$images_dir/'PWB'$(basename $line)
        mv $image_dir/PWBModelImage.changes $image_dir/'PWB'$(basename $line).changes 
        mv $image_dir/PWBModelImage.image $image_dir/'PWB'$(basename $line).image
        pharoImage=$image_dir/'PWB'$(basename $line).image
        ~/Documents/Pharo/vms/70-x64/Pharo.app/Contents/MacOS/Pharo $pharoImage runPWBParserOn $line .&
    done
