#!/dis/sh
txt = $1
pdf = `{echo $txt | sed 's,\.txt$,.pdf,'}
os -T pdftotext -enc UTF-8 -layout -nopgbrk $pdf $txt
echo $txt
