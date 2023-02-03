default:
	echo "make go or make dart"
go:
	protoc --go_out=../src/protobuf_compiled --go_opt=paths=source_relative FrontendBackend.proto
	protoc --go_out=../src/protobuf_compiled --go_opt=paths=source_relative packet.proto 
	protoc --go_out=../src/protobuf_compiled --go_opt=paths=source_relative firmware_backend.proto
dart:
	protoc -I=. --dart_out=../lib/structures/protobuf ./FrontendBackend.proto
	protoc -I=. --dart_out=../lib/structures/protobuf ./packet.proto 
	protoc -I=. --dart_out=../lib/structures/protobuf ./FirmwareBackend.proto
