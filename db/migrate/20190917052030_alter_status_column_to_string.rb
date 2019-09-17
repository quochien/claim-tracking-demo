class AlterStatusColumnToString < ActiveRecord::Migration[6.0]
  def up
    change_column :claims, :status, :string, null: false, default: 'in_progress'
  end

  def down
    change_column :claims, :status, :integer, null: false, default: 0
  end
end
