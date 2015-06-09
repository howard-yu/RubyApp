class CreateBpooks < ActiveRecord::Migration
  def change
    create_table :bpooks do |t|
      t.string :name
      t.integer :years
      t.date :birthday

      t.timestamps null: false
    end
  end
end
