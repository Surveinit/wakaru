class AdminController < ApplicationController
  before_action :authenticate_admin

  def add
    @word = params[:word]
    @meaning = params[:meaning]

    if @word.present? && @meaning.present?
      if Dictionary.create_record(@word, @meaning)
        flash[:notice] = "Record created successfully."
      else
        flash[:alert] = "There was an error creating the record."
      end
    end
  end

  private

  def authenticate_admin
    authenticate_or_request_with_http_basic("Admin Area") do |username, password|
      username == ENV["ADMIN_USERNAME"] && password == ENV["ADMIN_PASSWORD"]
    end
  end
end
