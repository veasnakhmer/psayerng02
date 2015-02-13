class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :blog

      t.timestamps
    end
  end
end
