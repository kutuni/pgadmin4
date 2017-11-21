
clean:
	docker rm -f pgadmin4

run:
	docker run --name pgadmin4 -d --net="host" -p 5050:5050 -e DEFAULT_USER=admin -e DEFAULT_PASSWORD=admin --restart always kutuni/pgadmin4:2.0

export:
	docker save kutuni/pgadmin4:2.0 | gzip > $(HOME)/dockerimages/pgadmin4.image.tar.gz

import:
	gunzip -c pgadmin4.image.tar.gz | docker load
