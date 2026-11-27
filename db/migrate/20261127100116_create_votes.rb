class CreateVotes < ActiveRecord::Migration[8.1]
  def change
    create_table :votes do |t|
      t.string :choice

      t.timestamps
    end
  end
end
