class CreateEditorials < ActiveRecord::Migration[6.1]
  def change
    create_table :editorials do |t|
      t.string :nombre
      t.string :pais
      t.references :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
