class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.integer :telefono
      t.string :colonia
      t.string :calle
      t.integer :numero_casa
      t.text :referencia

      t.timestamps
    end
  end
end
