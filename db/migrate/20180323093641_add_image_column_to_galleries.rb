class AddImageColumnToGalleries < ActiveRecord::Migration[5.1]
  def up
    add_attachment :galleries, :image
  end

  def down
    remove_attachment :galleries, :image
  end
end
