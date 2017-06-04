class AddAttachmentImageSignToLicenses < ActiveRecord::Migration[5.1]
  def self.up
    change_table :licenses do |t|
      t.attachment :image
      t.attachment :sign
    end
  end

  def self.down
    remove_attachment :licenses, :image
    remove_attachment :licenses, :sign
  end
end
