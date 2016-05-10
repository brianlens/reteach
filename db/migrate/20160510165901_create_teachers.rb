class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :nickname
      t.string :subject
      t.string :image
      t.references :school, index: true, foreign_key: true
      t.integer :avgrating

      t.timestamps null: false
    end
  end
end
