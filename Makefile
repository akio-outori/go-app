PROJECT="go-app"
WORKING_DIR="."
PORT="8080"

build:
	cd $(WORKING_DIR)/src && \
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main
	docker build -t $(PROJECT) $(WORKING_DIR)

run:
	docker run -p $(PORT):$(PORT) -t $(PROJECT)
