class CreateRoutesRoutes < ActiveRecord::Migration

  def up
    create_table :refinery_routes do |t|
      t.string :name
      t.string :region
      t.string :duration
      t.string :authors
      t.text :description
      t.text :sections
      t.integer :position

      t.timestamps
    end

    Refinery::Routes::Route.create_translation_table! :region => :string, :description => :text, :sections => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-routes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/routes/routes"})
    end

    drop_table :refinery_routes

    Refinery::Routes::Route.drop_translation_table!

  end

end
