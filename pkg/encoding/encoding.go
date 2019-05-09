//go:generate godocdown -o README.md

package encoding

import "github.com/gogo/protobuf/jsonpb"

var (
	PBJSONMarshaler = &jsonpb.Marshaler{
		Indent: "  ",
	}
	PBJSONUnmarshaler = &jsonpb.Unmarshaler{
		AllowUnknownFields: false,
	}
)
