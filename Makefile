all:
	protoc --go_out=../src/protobuf_compiled --go_opt=paths=source_relative device.proto
	protoc --go_out=../src/protobuf_compiled --go_opt=paths=source_relative sensor.proto