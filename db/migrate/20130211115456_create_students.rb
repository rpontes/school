class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :registry, :null => false
      t.string :name, :null => false
      t.references :course
      t.timestamps
    end
  end
end
