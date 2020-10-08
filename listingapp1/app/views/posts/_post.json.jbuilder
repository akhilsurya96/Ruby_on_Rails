json.extract! post, :id, :s.no, :integer, :title, :genere, :string, :description, :string, :no.of, :pages, :integer, :created_at, :updated_at
json.url post_url(post, format: :json)
