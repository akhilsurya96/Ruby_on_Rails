class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :age, type: Integer
  has_many :post2
  validates :name, presence: true,format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :age, numericality: {with: /\A\d+\z/, only_integer: true ,greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "should be in the enter correctly"}
end
