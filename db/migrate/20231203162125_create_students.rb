class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.boolean :dormitory
      t.integer :experiance
      t.boolean :isTeacher
      t.string :faculty
      t.string :language

      t.timestamps
    end
  end
end
