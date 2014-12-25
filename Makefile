new:
	docker build -t mastak/checkio-dev .

run:
	docker run -p 80:80 -i -t -v $(arg1):/opt/checkio mastak/checkio-dev  /bin/bash /opt/init-fast.sh

run-full:
	docker run -p 80:80 -i -t -v $(arg1):/opt/checkio mastak/checkio-dev
