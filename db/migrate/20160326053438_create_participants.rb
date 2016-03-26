class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :participant_name
      t.string :participant_email

      t.timestamps null: false
    end
  end
end
