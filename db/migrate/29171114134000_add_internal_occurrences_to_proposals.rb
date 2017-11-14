class AddInternalOccurrencesToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :internal_occurrences, :string
  end
end
