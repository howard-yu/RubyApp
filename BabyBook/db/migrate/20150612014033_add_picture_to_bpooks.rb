class AddPictureToBpooks < ActiveRecord::Migration
  def change
  	add_column :bpooks, :picture, :string
  end
end
