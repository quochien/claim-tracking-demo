class Claim < ApplicationRecord
  extend Enumerize

  validates :claim_number, :claimant_name, :email, :accident_date, :status, presence: true
  # enum status: %I[in_progress evaluation approval rejection]

  enumerize :status, in: %I[in_progress evaluation approval rejection], default: :in_progress
end
