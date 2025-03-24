## Docker
containers are old
containerize : 1970 started with Chroot -> fowlowed by BSD jails, Solaris Zones and linux containers (LXC)
BSD and Solaris Zones allows administors to create entrie virtual environments for applications

2007 year : linux containers

docker namespaces and ControlGroups : 

Namespaces:
1 - PID -> process isolation for container to see child process
2 - NET -> Create a isolate network for container
3 - mnt -> isolation filesystem for container
4 - uts(unix time sharing) -> to separate hostname domainname settings
5 - ipc -> isolation proccess connection 
6 - user -> isolation users

Control Groups:
1 - Resource limit usage -> Cpu, Network, Disc
2 - count of use resource from  containers
3 - Supervision on resource count usage
4 - Preventing containers from interfering with each other

docker commands :

1 - docker container create -> create a container but not start this : 
	command : docker container create [Option] image
	example : docker container create hello-world -> create container without run a linux system
	example with run hello-world image in a linux os and up this -> docker container create hello-world:linux

2 - docker ps -> get only active containers
3 - docker ps --all -> get all status containers

when you run "docker container create" command get a "containerID"

for start container :
1 - run this command -> docker container start containerID
if you got containerID that means container successfully started

in command docker ps --all : 
if you got status Exited (0) that means container has problem and run container failed

### See container logs

for see docker container logs you can run this command

1 - docker logs containerID[0:3]<br />
for example : containerID = cb2hx34pgn1 -> you must run this command :<br />
docker logs cb2<br />

### attach to container for see logs in start container

command : docker container start --attach cb2

## Docker run command

docker run is a combined command -> docker run hello-world:linux
docker run = docker container create + docker container start + docker container attach