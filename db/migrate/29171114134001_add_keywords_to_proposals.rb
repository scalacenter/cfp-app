class AddKeywordsToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :keywords, :string, default: ''
  end
end
