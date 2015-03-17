class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
    add_column :types, :type_id, :integer
  end
end
