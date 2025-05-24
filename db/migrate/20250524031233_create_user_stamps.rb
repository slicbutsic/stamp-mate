class CreateUserStamps < ActiveRecord::Migration[7.1]
  def change
    create_table :user_stamps do |t|
      t.references :user, null: false, foreign_key: true
      t.references :stamp, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
