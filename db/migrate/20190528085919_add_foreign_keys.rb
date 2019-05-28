class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :expertises, :user, index: true
    add_reference :missions, :user, index: true
  end
end
