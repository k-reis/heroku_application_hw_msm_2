class Character < ApplicationRecord
  # Direct associations

  belongs_to :actor

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
