class CreateLineItems < ActiveRecord::Migration[5.1]
  # def change
  #   create_table :line_items do |t|
  #     t.integer :product_id
  #     t.integer :cart_id
  #     t.timestamps
  #   end
  # end
  def change
    create_table :line_items do |t|
      t.references :product, index: true
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end
