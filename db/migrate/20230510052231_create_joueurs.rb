class CreateJoueurs < ActiveRecord::Migration[7.0]
  def change
    create_table :joueurs do |t|
      t.string :name
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
