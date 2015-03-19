class SearchController < ApplicationController
  require_dependency 'search_engine'
  def search
  end

  def results
    client = SearchEngine.new(params[:search])
    if client.error == ""
      @char_results = client.search_for_chars
      render "results"
    else
      @error = client.error
      render "search"
    end
  end
  
end