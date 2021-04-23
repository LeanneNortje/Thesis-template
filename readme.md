# Stellenbosch University E&E Department LaTeX Template

To get the right TexStudio compile command, follow these steps:

1. `Options` -> `Configure TexStudio` -> `Build` 
2. Under `User Commads`, click `+Add`. 
3. Make the command name: `user0: Make Nomenclature`.
4. Make the actual command `makeindex -s nomencl.ist -t %.nlg -o %.nls %.nlo`
5. Then go to `Default Compiler` and click on the wrench. 
6. Add the following sequence: `PdfLaTeX` -> `Make Nomenclature` -> `BibTeX` -> `PdfLaTeX` -> `PdfLaTeX`
7. Press `OK` and `OK`