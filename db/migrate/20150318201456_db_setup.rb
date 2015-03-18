class DbSetup < ActiveRecord::Migration
  def change
    
    create_table :users do |t|
    t.text :name
    t.text :password
    t.text :image
    end

    create_table :teams do |t|
    t.text :name
    t.integer :user_id
    t.text :slug
    end

    create_table :characters do |t|
    t.text :name                 
    t.text :description
    t.integer :user_id
    t.integer :team_id
    t.text :image
    t.integer :popularity
    end

    create_table :wishlists do |t|
    t.text :name
    t.integer :user_id
    t.text :offer
    end

    create_table :characters_wishlists do |t|
    t.integer :character_id
    t.integer :wishlist_id
    end

    create_table :messages do |t|
    t.text :body
    t.integer :from_user_id
    t.integer :to_user_id
    t.text :viewed
    t.text :trade
    t.integer :offered_char
    t.integer :requested_char
    end
    
    
  end

  
end
