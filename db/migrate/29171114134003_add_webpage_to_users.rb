class AddWebpageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :webpage, :string, default: ''
  end
end
