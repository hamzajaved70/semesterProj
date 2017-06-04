class AddAttachmentImageToCnics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cnics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cnics, :image
  end
end
