class CreateLamps < ActiveRecord::Migration
  def change
    create_table :lamps do |t|
      t.boolean :is_silent, :default => true
      t.timestamps
    end
  end
end
