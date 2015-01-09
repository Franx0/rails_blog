class AddVideoAndAudioToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :video, :text
    add_column :posts, :audio, :text
  end
end
