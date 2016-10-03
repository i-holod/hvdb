class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :sname
      t.string :lname
      t.string :phone
      t.string :address
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
