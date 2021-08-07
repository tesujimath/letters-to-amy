.PHONY: docs server

docs:
	hugo -d docs --buildFuture

server:
	hugo server --baseURL http://sabaki:1313 --bind 192.168.178.137 --disableFastRender --buildFuture
