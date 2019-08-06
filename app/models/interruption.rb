class Interruption < ApplicationRecord
  validates :name, :reason, :status, :happened_at, presence: true

  enum status: { external: 0, internal: 1, interteam: 2}

  TEAM = %w(Linda Chris Jared Noel Colten Ryan Michael)
end
