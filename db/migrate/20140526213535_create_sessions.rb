class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :home

      t.timestamps
    end
  end
end
