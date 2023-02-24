class CreateActors < ActiveRecord::Migration[6.1]
  def change
    # Your code her
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
