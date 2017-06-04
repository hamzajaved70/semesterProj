class AddAttachmentSignToCnics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cnics do |t|
      t.attachment :sign
    end
  end

  def self.down
    remove_attachment :cnics, :sign
  end
end
