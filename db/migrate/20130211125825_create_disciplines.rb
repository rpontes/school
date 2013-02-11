class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name, :null => false
      t.references :course
      t.timestamps
    end
  end
end
