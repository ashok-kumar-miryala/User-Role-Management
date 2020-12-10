class AddAddressLineToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address_line, :string
    add_column :users, :street, :string
    add_column :users, :land_mark, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :pincode, :integer
  end
end
