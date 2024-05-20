git clone --depth 1 https://github.com/davidvbgit/repositorioGIT.git C:\Users\david\Desktop\repGIT
move-Item -Path C:\Users\david\Desktop\repGIT\..\* -Destination c:\Users\david\Desktop\pruebaGIT
cd c:\Users\david\Desktop\pruebaGIT > $null
git add . > $null
git commit -m "bien" > $null
git push -u origin master > $null 
start-sleep -seconds 2
$files = Get-ChildItem "c:\Users\david\Desktop\pruebaGIT"
ForEach ($File in $files) {
    Write-host "-Se ha subido el archivo $File`n" }

start-sleep -seconds 5
Write-host "Se procedera a mover los siguientes archivos:`n"
start-sleep -seconds 2
ForEach ($File in $files) {
    Write-host "-$File`n" }
start-sleep -seconds 5
move-Item -Path c:\Users\david\Desktop\pruebaGIT\* -Destination c:\Users\david\Desktop\backup