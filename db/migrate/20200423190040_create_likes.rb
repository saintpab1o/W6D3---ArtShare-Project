class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id, null:false
      t.references :likable, null:false, polymorphic: true
      t.timestamps
      #what do we validate in model?
    end

  end
end
