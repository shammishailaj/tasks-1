package service

import (
	"fmt"
	"github.com/autom8ter/tasks/config"
	"github.com/autom8ter/tasks/db"
	"google.golang.org/grpc"
	"net"
)

//Service holds everything needed to create a gRPC task service server
type Service struct {
	database   *db.Database
	grpcServer *grpc.Server
}

//NewService creates a new Service from config options
func NewService(opts ...config.Option) (*Service, error) {
	c := config.NewConfig(opts...)
	if err := c.Validate(); err != nil {
		return nil, err
	}
	d := db.NewDatabase(c.PGOptions())
	err := d.Init()
	if err != nil {
		return nil, err
	}
	return &Service{
		database:   d,
		grpcServer: c.GRPCServer(d.GrpcFunc),
	}, nil
}

//Serve starts the gRPC server on the specified address
func (s *Service) Serve(addr string) error {
	fmt.Println("starting grpc server on http://localhost:8080")
	lis, err := net.Listen("tcp", addr)
	if err != nil {
		return err
	}
	return s.grpcServer.Serve(lis)
}
