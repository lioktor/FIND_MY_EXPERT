class DeleteForeignKeys < ActiveRecord::Migration[5.2]
  def change
    remove_reference :expertises, :user, index: true
    remove_reference :missions, :user, index: true
  end
end
