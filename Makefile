go:
	protoc --go_out=. --go_opt=paths=source_relative packet.proto 
	protoc --go_out=. --go_opt=paths=source_relative FrontendBackend.proto
