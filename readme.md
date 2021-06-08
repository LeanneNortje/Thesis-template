# Stellenbosch University E&E Department LaTeX Template

This template was adapted from [this template](https://github.com/kamperh/stellenbosch_ee_report_template) made by Dr Herman Kamper.

To use the template for Skripsie or PhD proposal, just (un)comment the appropriate parts in `frontmatter/title_page.tex`. To use this for a PHD  dissertation, the correct decription should be added. 

To get the right TexStudio compile command, follow these steps:

1. `Options` -> `Configure TexStudio` -> `Build` 
2. Under `User Commads`, click `+Add`. 
3. Make the command name: `user0: Make Nomenclature`.
4. Make the actual command `makeindex -s nomencl.ist -t %.nlg -o %.nls %.nlo`
5. Then go to `Default Compiler` and click on the wrench. 
6. Add the following sequence: `PdfLaTeX` -> `Make Nomenclature` -> `BibTeX` -> `PdfLaTeX` -> `PdfLaTeX`
7. Press `OK` and `OK`