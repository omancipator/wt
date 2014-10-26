class CreateWeightPosts < ActiveRecord::Migration
  def change
    create_table :weight_posts do |t|
      t.string :comment
      t.float :weight
      t.float :fat_per
      t.float :bmi
      t.date :weight_date

      t.timestamps
    end
  end
end
