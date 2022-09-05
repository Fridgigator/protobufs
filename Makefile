default:
	echo "make go or make dart"
go:
	protoc --go_out=../protobuf_compiled --go_opt=paths=source_relative FrontendBackend.proto
	protoc --go_out=../protobuf_compiled --go_opt=paths=source_relative packet.proto 
	protoc --go_out=../protobuf_compiled --go_opt=paths=source_relative FirmwareBackend.proto
dart:
	protoc --go_out=. --go_opt=paths=source_relative packet.proto 
	protoc --go_out=. --go_opt=paths=source_relative FrontendBackend.proto
	protoc --go_out=. --go_opt=paths=source_relative FirmwareBackend.proto