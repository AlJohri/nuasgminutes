convert:
	textutil -convert txt original/*.docx
	textutil -convert txt original/*.doc
	/bin/bash -c 'for file in original/*.pdf; do pdftotext "$$file" "$$file.txt"; done'
	mv original/*.txt txt/

search:
	ag -i noah ./txt
	ag -i christina ./txt
	ag -i calendar ./txt
	ag -i redesignu ./txt
	ag -i jobcat ./txt
	ag -i "unofficial student guide" ./txt
	ag -i "study abroad guide" ./txt
	ag -i "course dj" ./txt
	ag -i "coursedj" ./txt

clean:
	rm -f txt/*.txt