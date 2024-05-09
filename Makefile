version = 1.0.0
container_name = open-refine

build:
	docker build --platform=linux/amd64 --no-cache -t $(container_name):latest .

publish:
	docker tag $(container_name):latest experienceleague.azurecr.io/$(container_name):latest && docker push experienceleague.azurecr.io/$(container_name):latest && docker tag $(container_name):latest $(container_name):$(version) && docker tag $(container_name):$(version) experienceleague.azurecr.io/$(container_name):$(version) && docker push experienceleague.azurecr.io/$(container_name):$(version)