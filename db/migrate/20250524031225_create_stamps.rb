class CreateStamps < ActiveRecord::Migration[7.1]
  def change
    create_table :stamps do |t|
      t.string :description
      t.string :claim_code
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
