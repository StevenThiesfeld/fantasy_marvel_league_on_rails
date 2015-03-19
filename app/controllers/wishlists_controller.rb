class WishlistsController < ApplicationController

  def show
    @your_chars = @current_user.characters
    @wishlist = @current_user.wishlist
    @chars_on_wishlist = @wishlist.characters
    erb :"wishlist/wishlist"
  end

  def all
    @users = User.all
    erb :"wishlist/all"
  end

  def add_offer
    @wishlist = @current_user.wishlist
    @wishlist.update(offer: params["offer"])
    redirect_to "/wishlist"
  end

  def add_character
    wishlist = @current_user.wishlist
    char = Character.find_by(name: params["name"])
    CharactersWishlist.create(character_id: char.id, wishlist_id: wishlist.id)
    redirect_to "/wishlist"
  end
  
end
