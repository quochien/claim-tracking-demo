class Claim < ApplicationRecord
  enum status: %I[in_progress evaluation approval rejection]
end
