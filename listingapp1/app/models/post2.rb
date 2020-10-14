class Post2
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :sno, type: Integer
  field :title, type: String
  field :genere, type: String
  field :description, type: String
  field :npages, type: Integer
  belongs_to :author
  validates :sno,uniqueness: true, numericality: { only_integer: true ,greater_than_or_equal_to: 0, message: "aplhabets are not allowed"}
  validates :title, uniqueness: true,format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :genere, format: { with: /\A\D+\z/, message: "Numbers are not allowed" }
  validates :npages, numericality: { only_integer: true , greater_than_or_equal_to: 0, message: "aplhabets are not allowed and enter correct number"}
  validates :description, presence: true
end
