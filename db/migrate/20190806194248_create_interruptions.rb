class CreateInterruptions < ActiveRecord::Migration[5.2]
  def change
    create_table :interruptions do |t|
      t.string :name
      t.string :reason
      t.integer :status
      t.datetime :happened_at

      t.timestamps
    end
  end
end
