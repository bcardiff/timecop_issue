class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.datetime :time_field

      t.timestamps
    end
  end
end
