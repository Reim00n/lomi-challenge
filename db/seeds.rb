# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  User.create!(email: 'admin@example.com', password: 'password',
               password_confirmation: 'password')
end
cliente1 = Client.create(name: 'Fernando Lopez', ruc: '4658789-3', business_name: 'Fernando Lopez')
Card.create(name: 'itau', number: '123456789456', cvv: '456', card_type: :debit, client_id: cliente1.id)
Currency.create(name: 'Guarani')
purchase = Purchase.create(invoice_number: '001-001-0000123', date: DateTime.now, payment_tipe: :cash, total_amount: 0,
                           status: :active, client_id: Client.last.id, currency_id: Currency.last.id)
Country.create(name: 'Paraguay')
supplier1 = Supplier.create(name: 'ABC Company', legal_entity: 'ABC Corp', ruc: '123456789', phone: '+1234567890',
                            contact_name: 'John Doe', country_id: Country.last.id)
Measure.create(name: 'Kilogramos', symbol: 'Kg')
measure2 = Measure.create(name: 'Mililitros', symbol: 'ml')
brand1 = Brand.create(name: 'Coca Cola')
categoria1 = Category.create(name: 'Bebidas')
categoria2 = Category.create(name: 'Gaseosas', parent_category: categoria1)
categoria1.child_category = categoria2
categoria1.save
product1 = Product.create(name: 'Coca Cola 250', cost: 6500, vat_rate: 10, status: :active, brand: brand1, category: categoria2,
                          measure: measure2, supplier: supplier1)
PurchaseDetail.create(quantity: 5, purchase: purchase, product: product1, cost: product1.cost,
                      subtotal: product1.cost * 5)

# Crear una tarjeta usando Faker
Card.create(
  name: Faker::Business.credit_card_type,
  number: Faker::Business.credit_card_number,
  cvv: Faker::Number.number(digits: 3),
  card_type: :debit,
  client_id: cliente1.id
)

# Crear más clientes con datos aleatorios
5.times do
  Client.create(
    name: Faker::Name.name,
    ruc: Faker::Company.swedish_organisation_number,
    business_name: Faker::Company.name
  )
end

# Crear más compras con datos aleatorios
3.times do
  Purchase.create(
    invoice_number: Faker::Invoice.reference,
    date: Faker::Date.backward(days: 365),
    payment_tipe: :cash,
    total_amount: Faker::Commerce.price(range: 100..1000),
    status: :active,
    client_id: Client.all.sample.id,
    currency_id: Currency.last.id
  )
end
