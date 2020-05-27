class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :breed
      t.references :owner, foreign_key: true, null: false
    end
  end
end
