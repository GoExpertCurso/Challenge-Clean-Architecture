package entity

type OrderRepositoryInterface interface {
	Save(order *Order) error
	Orders() ([]Order, error)
	// GetTotal() (int, error)
}
