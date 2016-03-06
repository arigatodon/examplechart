class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.references :stage, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
