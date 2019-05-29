class AddCoordinatesToExpertise < ActiveRecord::Migration[5.2]
  def change
    add_column :expertises, :latitude, :float
    add_column :expertises, :longitude, :float
  end
end
