rm -rf {1..5}*
cp ../httpstatus.github.io/{1..5}* . ; for i in {1..5}*;do mv  $i $i.html;done;sed 's/httpstatus.github.io/httpstatus.github.io/g' * -i;for i in {1..5}*.html;do mkdir ${i/.html/};mv $i ${i/.html/}/index.html;(cd ${i/.html/}/;ln -s  ../favicon.ico  . ) & done;sleep 2;git add -A;git commit -m "INIT";git push
