class CreateCoursesDisciplinesJoinTable < ActiveRecord::Migration
  def up
    create_table :courses_disciplines, :id => false do |t|
      t.integer :course_id
      t.integer :discipline_id
    end
  end

  def down
    drop_table :courses_disciplines
  end
end
