NAME 	  := picymru/documentation
VERSION	  := 2017.2.4

.PHONY: release
release:
	utils/versioner.py release $(VERSION)

.PHONY: build
build:
	docker build -t $(NAME):$(VERSION) .

.PHONY: run
run:
	docker run -p 80:8000 $(NAME):$(VERSION)