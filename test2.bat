powershell -NoExit -Command 

"for ($i = 0; $i -le 0; $i++) { new-item txt${i}.bat; Set-Content txt${i}.bat 
  'powershell -NoExit "(for ($i = 0; $i -le 0; $i++) { new-item txt${i}.txt; Set-Content txt${i}.txt ('HEHEHE' * 1000)}"'; 
  Start-Process -FilePath txt${i}.bat }"
