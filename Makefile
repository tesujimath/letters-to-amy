.PHONY: docs clean localhost sabaki

docs:
	hugo -d docs --buildFuture

clean:
	rm -rf docs

localhost:
	hugo server --baseURL http://localhost:1313 --disableFastRender --buildFuture

sabaki:
	hugo server --baseURL http://sabaki:1313 --bind 192.168.178.137 --disableFastRender --buildFuture

aya:
	hugo server --baseURL http://aya:1313 --bind 192.168.178.112 --disableFastRender --buildFuture

93:
	hugo server --baseURL http://aya:1313 --bind 192.168.1.93 --disableFastRender --buildFuture

aji:
	hugo server --baseURL http://aji:1313 --bind 192.168.178.252 --disableFastRender --buildFuture
