build: ut-run
	docker build -t local-trainer .
run: build
	docker run local-trainer
ut-build:
	docker build -t trainer-tester -f Dockerfile.UT .
ut-run: ut-build
	docker run trainer-tester
push: build
	docker push xxx/yyy:x.y.z
pull:
	docker pull xxx/yyy:v1
