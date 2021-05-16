class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
