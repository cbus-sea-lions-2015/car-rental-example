class CreateSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :age
      t.string  :username
      t.string  :password_thingy
      t.boolean :insurance

      t.timestamps
    end

    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :mileage
      t.integer :cost

      t.timestamps
    end

    create_table :rentals do |t|
      t.references :user
      t.references :car
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :returned

      t.timestamps
    end
  end
end
