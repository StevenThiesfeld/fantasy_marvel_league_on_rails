class CharactersWishlist < ActiveRecord::Base
  attr_accessible :character_id, :wishlist_id
  belongs_to :character
  belongs_to :wishlist
end