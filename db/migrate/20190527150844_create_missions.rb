class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.integer :price
      t.string :status
      t.date :starting_date
      t.date :end_date
      t.references :expertise, foreign_key: true

      t.timestamps
    end
  end
end
