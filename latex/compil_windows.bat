@echo off
SET BINDIR=%~dp0
CD /D "%BINDIR%"

pdflatex main.tex
makeglossaries main
pdflatex main.tex
pdflatex main.tex


rename main.pdf IDB.pdf
move /y IDB.pdf compil
move /y main.tex compil
del main.*
cd compil
move /y main.tex ../

cls
IDB.pdf
cd ..