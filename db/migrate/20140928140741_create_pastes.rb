class CreatePastes < ActiveRecord::Migration
  def change
    create_table :pastes do |t|
      t.string :title
      t.text :body
      t.text :formatted_body
      t.string :slug

      t.timestamps
    end
  end
end
