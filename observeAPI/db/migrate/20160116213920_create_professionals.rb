class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.integer :userid
      t.integer :professionid

      t.timestamps null: false
    end
  end
end
