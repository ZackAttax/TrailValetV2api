class CreateValets < ActiveRecord::Migration[6.1]
  def change
    create_table :valets do |t|
      t.string :location
      t.text :issue
      t.boolean :fixed, default: false
      t.belongs_to :trail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
