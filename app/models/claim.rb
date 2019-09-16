class Claim < ApplicationRecord
  validates :claim_number, :claimant_name, :email, :accident_date, :status, presence: true
  enum status: %I[in_progress evaluation approval rejection]
end
