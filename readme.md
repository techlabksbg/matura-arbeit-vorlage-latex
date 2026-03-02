# Vorlage für Maturaarbeiten in LaTeX

1. Software installieren
2. Alle Dateien in einen Ordner speichern (z.B. als zip-Datei herunterladen)
3. Die Datei minimalbeispiel/minimalbeispiel.tex in TeXstudio öffnen und kopmilieren. Wenn das pdf erzeugt wurde:
4. Die Datei vorlage.tex in TeXstudio öffnen und übersetzen (mit pdflatex)



## Installation der Software
Es werden einerseits die Programm für LaTeX gebraucht, andererseits ein Editor, der das Kompilieren erleichtert.

### Windows: MiKTeX und TeXstudio
Menu Start -> Powershell starten
Folgende Zeile eingeben (mit Enter bestätigen):
```
winget install -e --id MiKTeX.MiKTeX
```
Default-Einstellung sind so ok, bis auf die Einstellung «Pakete ohne Nachfrage automatisch installieren», die ich doch sehr empfehle zu aktivieren.

Dann noch ein Editor:
```
winget install -e --id TeXstudio.TeXstudio
```

### Mac
MacTeX soll gut sein.

### Linux (Ubuntu, Debian etc.)
```
sudo apt install texlive-latex-base texlive-pictures texlive-science
sudo apt install texlive-latex-extra texlive-lang-german biber
```
Wenn mit dem Makefile kompiliert werden soll, ist noch
```
sudo apt install build-essential
```
nötig.
