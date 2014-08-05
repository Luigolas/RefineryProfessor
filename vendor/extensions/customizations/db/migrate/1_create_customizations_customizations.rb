class CreateCustomizationsCustomizations < ActiveRecord::Migration

  def up
    create_table :refinery_customizations do |t|
      t.string :name
      t.string :desctiption
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-customizations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/customizations/customizations"})
    end

    drop_table :refinery_customizations

  end

end
