class WordLookupController < ApplicationController
  def index
    @word = params[:word]
    @meaning = Dictionary.find_meaning(@word) if @word.present?
  end
end
