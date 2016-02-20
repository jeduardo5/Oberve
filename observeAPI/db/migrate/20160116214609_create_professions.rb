class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.integer :prof_id
      t.string :name

      t.timestamps null: false
    end
  end
end
