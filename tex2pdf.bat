@echo off
setlocal

:: Get the current directory and set THESIS_ROOT variable
for /f %%A in ('cd') do set "THESIS_ROOT=%%A"

:: Change to the src directory, exit with an error message if not found
cd "%THESIS_ROOT%\src" || (echo src not found & exit /b 1)

:: Compile the LaTeX document with xelatex
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory="%THESIS_ROOT%\out" -aux-directory="%THESIS_ROOT%\auxil" ecustthesis.tex

:: Change to the auxil directory, exit with an error message if not found
cd "%THESIS_ROOT%\auxil" || (echo auxil not found & exit /b 1)

:: Run biber to process the bibliography
biber --input-directory="%THESIS_ROOT%\src" ecustthesis

:: Change back to the src directory
cd "%THESIS_ROOT%\src" || (echo src not found & exit /b 1)

:: Compile the LaTeX document again
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory="%THESIS_ROOT%\out" -aux-directory="%THESIS_ROOT%\auxil" ecustthesis.tex
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory="%THESIS_ROOT%\out" -aux-directory="%THESIS_ROOT%\auxil" ecustthesis.tex

:: Change back to the root directory
cd "%THESIS_ROOT%" || (echo root not found & exit /b 1)

:: End of the script
endlocal
