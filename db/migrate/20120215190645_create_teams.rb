class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.string :name
      t.string :city
      t.string :owner

      t.timestamps
    end
  end
end
