.PHONY: docs clean localhost sabaki

docs:
	hugo -d docs --buildFuture

clean:
	rm -rf docs

localhost:
	hugo server --baseURL http://localhost:1313 --disableFastRender --buildFuture

sabaki:
	hugo server --baseURL http://sabaki:1313 --bind 192.168.178.137 --disableFastRender --buildFuture
