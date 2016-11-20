class AddReferenceToItems < ActiveRecord::Migration[5.0]
  def change
     add_column :items, :reference, :string
  end
end
