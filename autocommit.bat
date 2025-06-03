:loop
	python ../scripts/test.py
	git add .
	set HOURMINUTE=%time:~0,5%
        git commit -m "AUTO_COMMIT at %date% %HOURMINUTE%"
	git push origin master
	TIMEOUT 10
	
goto loop