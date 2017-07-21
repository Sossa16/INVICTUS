class AddAvatarsToUsers < ActiveRecord::Migration[5.0]
   def self.up
    change_table :teams do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :teams, :avatar
  end
end
