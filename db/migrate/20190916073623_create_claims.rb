class CreateClaims < ActiveRecord::Migration[6.0]
  def change
    create_table :claims do |t|
      t.string  :claim_number, null: false
      t.string  :claimant_name, null: false
      t.string  :email, null: false
      t.date    :accident_date, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end
