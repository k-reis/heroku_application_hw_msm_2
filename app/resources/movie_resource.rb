class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :integer
  attribute :duration, :integer
  attribute :description, :string
  attribute :director_id, :integer

  # Direct associations

  has_many   :characters

  belongs_to :director

  # Indirect associations

  many_to_many :actors

end
