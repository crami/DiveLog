
pdf:
	ps2pdf divelog.ps
	ps2ps divelog.ps divelog-norm.ps
	ps2pdf diveindex.ps
	ps2ps diveindex.ps diveindex-norm.ps
	
even-odd: pdf
	pdftk A=divelog.pdf cat Aodd output divelog-odd.pdf
	pdftk A=divelog.pdf cat Aeven output divelog-even.pdf
	pdftk A=diveindex.pdf cat Aodd output diveindex-odd.pdf
	pdftk A=diveindex.pdf cat Aeven output diveindex-even.pdf

all:	pdf even-odd

clean:
	rm divelog-norm.ps diveindex-norm.ps divelog.pdf diveindex.pdf divelog-odd.pdf divelog-even.pdf diveindex-odd.pdf diveindex-even.pdf