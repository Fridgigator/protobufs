go:
	protoc --go_out=. --go_opt=paths=source_relative packet.proto
