class CreateExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.string :category
      t.text :description
      t.text :address
      t.integer :daily_rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
