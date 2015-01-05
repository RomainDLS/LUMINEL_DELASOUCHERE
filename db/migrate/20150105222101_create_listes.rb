class CreateListes < ActiveRecord::Migration
  def change
    create_table :listes do |t|
      t.string :nom
      t.integer :id_liste

      t.timestamps
    end
  end
end
