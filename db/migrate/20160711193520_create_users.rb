class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.boolean :is_teacher, default: false
      t.boolean :is_student, default: false

      t.timestamps null: false
    end
  end
end
