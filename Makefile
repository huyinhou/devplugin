
.PHONY: plugin

plugin: 
	go build -o plugin ./

docker:
	docker build -t huyinhou/devplugin:v1 ./
	docker push huyinhou/devplugin:v1