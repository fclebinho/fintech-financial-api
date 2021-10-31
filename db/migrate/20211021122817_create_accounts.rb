class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts, id: :uuid do |t|
      t.integer :kind, :default => 0
      t.integer :number
      t.string :title
      t.string :description
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
