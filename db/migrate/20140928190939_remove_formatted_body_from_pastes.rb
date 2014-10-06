class RemoveFormattedBodyFromPastes < ActiveRecord::Migration
  def change
    remove_column :pastes, :formatted_body, :text
  end
end
