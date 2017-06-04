class AddAttachmentImageSignToPassports < ActiveRecord::Migration[5.1]
  def self.up
    change_table :passports do |t|
      t.attachment :image
      t.attachment :sign
    end
  end

  def self.down
    remove_attachment :passports, :image
    remove_attachment :passports, :sign
  end
end
