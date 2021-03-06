class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :best_answer, default: nil
      t.integer :views, default: 0
      t.references :user, null: false
      t.timestamps null: false
    end
  end
end
