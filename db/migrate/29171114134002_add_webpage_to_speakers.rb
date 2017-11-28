class AddWebpageToSpeakers < ActiveRecord::Migration[5.0]
  def change
    add_column :speakers, :webpage, :string, default: ''
  end
end
