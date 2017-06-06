class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :view_count, default: 0
    end
  end
end
