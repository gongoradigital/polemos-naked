home=`dirname $0`
if [ home = "" ]
  then home = "."
fi
for src in $home/../polemos/*.xml
do
  dest=$home/`basename $src`
  echo $dest
  xsltproc -o $dest  $home/../Teinte/tei4txm.xsl $src
done
