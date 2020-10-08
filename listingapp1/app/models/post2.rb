class Post2
  include Mongoid::Document
  field :sno, type: Integer
  field :title, type: String
  field :genere, type: String
  field :description, type: String
  field :npages, type: Integer
end
