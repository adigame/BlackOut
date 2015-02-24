@echo off


taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1


cd C:\Program Files (x86)\Steam\steamapps\common\Arma 3
timeout 3
start "arma3" /min /high "C:\Program Files (x86)\Steam\steamapps\common\Arma 3\arma3server.exe" -mod=@life_server;@extDB;@BlackOut -noPause -noSound -name=DefaultServer -profiles=config -config=config\server.cfg -cfg=config\basic.cfg -port=2302 -ip=192.168.0.34
timeout 6
echo ARMA 3 Server se lance
exit 