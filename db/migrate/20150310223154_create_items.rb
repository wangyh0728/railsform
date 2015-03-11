class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :type

      t.timestamps null: false
    end

    remove_column :items, :type
    add_column :items, :category, :string
  end
end
