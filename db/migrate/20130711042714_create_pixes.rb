class CreatePixes < ActiveRecord::Migration
  def change
    create_table :pixes do |t|
      t.string :name
      t.string :category
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
