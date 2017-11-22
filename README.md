# pgadmin4 V2.0 alpine

download Makefile and just 

make run

DEFAULT_USER=admin
DEFAULT_PASSWORD=admin

http://localhost:5050/


would you like to change user/passwd values, check the Makefile

run deamon mode:
	docker run --name pgadmin4 --rm -d --net="host" -p 5050:5050 -e DEFAULT_USER=admin -e DEFAULT_PASSWORD=admin --restart always kutuni/pgadmin4:2.0
	  
run console mode:
	docker run -it --net="host" -p 5050:5050 -e DEFAULT_USER=admin -e DEFAULT_PASSWORD=admin kutuni/pgadmin4:2.0
	
stop for deamon mode:
	docker stop pgadmin4

start for deamon:
docker start pgadmin4
