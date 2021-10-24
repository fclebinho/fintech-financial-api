class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries, id: :uuid do |t|
      t.integer :kind, :default => 0
      t.string :description
      t.date :due_date
      t.decimal :amount, precision: 15, scale: 2, :default => 0
      t.integer :status, :default => 0

      t.timestamps
    end
  end
end
