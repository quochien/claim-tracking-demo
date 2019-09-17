class Claim < ApplicationRecord
  extend Enumerize

  validates :claim_number, :claimant_name, :email, :accident_date, :status, presence: true

  enumerize :status, in: %I[in_progress evaluation approval rejection], default: :in_progress
end
