class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :cohort
      t.string :tshirt_size
      t.integer :birth_year
      t.date :registered

      t.timestamps
    end
  end
end
