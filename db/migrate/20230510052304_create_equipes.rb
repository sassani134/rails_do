class CreateEquipes < ActiveRecord::Migration[7.0]
  def change
    create_table :equipes do |t|
      t.string :name
      t.string :town
      t.references :joueur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
