class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.boolean :checked
      t.string :text
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
