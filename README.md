### To forward X11 from inside a docker container to a host running macOS

1. Install XQuartz: `https://www.xquartz.org/`
2. run:
`ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')                                                             
xhost + $ip`
3. docker build -t=firefox .
4. docker run --name firefox-container -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/Downloads:/root/Downloads firefox


### Windows 10 powershell

1. Install XServer: `choco install vcxsrv `
2. docker build -t=firefox .
3. set-variable -name DISPLAY -value your-ip:0.0
4. docker run -ti --rm -e DISPLAY=$DISPLAY firefox