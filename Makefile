#Dockerfile vars
alpver=3.12

#vars
IMAGENAME=hello-world
REPO=brianclee
TAGNAME=${REPO}/${IMAGENAME}
IMAGEFULLNAME=${TAGNAME}:${IMAGENAME}

.PHONY: help build push all

help:
	    @echo "Makefile arguments:"
	    @echo ""
	    @echo "alpver - Alpine Version"
	    @echo ""
	    @echo "Makefile commands:"
	    @echo "build"
		@echo "run"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
#	    @docker build --pull --build-arg ALP_VER=${alpver} --build-arg KCTL_VER=${kctlver} -t ${IMAGEFULLNAME} .
		@docker build -t ${TAGNAME} .

run:
		@docker run -dp 3000:3000 ${TAGNAME}

push:
	    @docker push ${IMAGEFULLNAME}

all: build push