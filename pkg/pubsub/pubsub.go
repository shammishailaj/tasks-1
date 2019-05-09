//go:generate godocdown -o README.md

package pubsub

import (
	"github.com/autom8ter/tasks/pkg/functions"
	"github.com/golang/protobuf/ptypes/any"
	"github.com/nats-io/nats"
)

type Nats struct {
	conn *nats.Conn
}

func NewNats(url string, opts ...nats.Option) (*Nats, error) {
	conn, err := nats.Connect(url, opts...)
	if err != nil {
		return nil, err
	}
	return &Nats{
		conn: conn,
	}, nil
}

func (n *Nats) Publish(msg *any.Any) error {
	return n.conn.Publish(msg.GetTypeUrl(), msg.GetValue())
}

func (n *Nats) SubscriptionBarrier(basicFunc functions.BasicFunc) error {
	return n.conn.Barrier(basicFunc)
}

func (n *Nats) ProtoToMsg(msg *any.Any, reply string) *nats.Msg {
	return &nats.Msg{
		Subject: msg.GetTypeUrl(),
		Reply:   reply,
		Data:    msg.GetValue(),
	}
}

func (n *Nats) ProtoToSubscription(msg *any.Any, queue string) *nats.Subscription {
	return &nats.Subscription{
		Subject: msg.GetTypeUrl(),
		Queue:   queue,
	}
}

func (n *Nats) NewInbox() string {
	return nats.NewInbox()
}

func (n *Nats) Auth(authFunc functions.AuthFunc) nats.AuthTokenHandler {
	return authFunc.AsNatsHandler()
}
