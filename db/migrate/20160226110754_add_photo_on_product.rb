class AddPhotoOnProduct < ActiveRecord::Migration
  def change
    add_attachment :products, :photo
  end
end
