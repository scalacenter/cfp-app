class AddSomeSpeakersFields < ActiveRecord::Migration[5.0]
  def change
    add_column :speakers, :twitter, :string, default: ''
    add_column :speakers, :photo_url, :string, default: ''
    add_column :speakers, :experience, :text, default: ''
    add_column :users, :twitter, :string, default: ''
    add_column :users, :photo_url, :string, default: ''
    add_column :users, :experience, :text, default: ''
  end
end
