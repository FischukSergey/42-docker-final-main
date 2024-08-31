build:
	@echo "Running create docker image"
	docker build -t sergey112/sprint11:v1 .
.PHONY: build

run:
	@echo "Running create docker image"
	docker run sergey112/sprint11:v1
.PHONY: run