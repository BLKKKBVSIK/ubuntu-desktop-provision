// Package provd contains the autogenerated gRPC API used by the Ubuntu Desktop Init frontend.
package provd

//TODO: Watch https://github.com/protocolbuffers/protobuf for any changes on the experimental status of optional fields,
// previously described on: https://github.com/protocolbuffers/protobuf/blob/main/docs/implementing_proto3_presence.md.
//
// Should it become default, remove the --experimental_allow_proto3_optional flag from the go generate command below.
//go:generate sh -c "PATH=\"$PATH:`go env GOPATH`/bin\" protoc --proto_path=. --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative ./protos/user.proto ./protos/locale.proto --experimental_allow_proto3_optional"
