push:   .push

.push:  .image
	@docker push bsorahan/turf
	@touch $@

image:  .image

.image: Dockerfile
	@docker build -t bsorahan/turf .
	@touch $@

clean:
	@rm -rf .image

.PHONY: clean image
