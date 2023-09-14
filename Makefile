go:
	rm -rf ../to-embedded/protobuf-compiled
	rm -rf ../integration-testing/protobuf-compiled
	[ -d ../to-embedded/protobuf-compiled ] || mkdir ../to-embedded/protobuf-compiled
	[ -d ../integration-testing/protobuf-compiled ] || mkdir ../integration-testing/protobuf-compiled -p
	protoc --go_out=../to-embedded/protobuf-compiled --go_opt=paths=source_relative device.proto
	protoc --go_out=../to-embedded/protobuf-compiled --go_opt=paths=source_relative sensor.proto
	protoc --go_out=../to-embedded/protobuf-compiled --go_opt=paths=source_relative envelope.proto
	protoc --go_out=../integration-testing/protobuf-compiled --go_opt=paths=source_relative device.proto
	protoc --go_out=../integration-testing/protobuf-compiled --go_opt=paths=source_relative sensor.proto
	protoc --go_out=../integration-testing/protobuf-compiled --go_opt=paths=source_relative envelope.proto
