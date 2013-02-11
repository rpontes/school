class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, :null => false
      t.references :discipline
      t.timestamps
    end
  end
end
