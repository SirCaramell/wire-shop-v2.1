class StaticController < ApplicationController
  before_action:require_token, only: [:feed]
  def index
    @customers = Customer.all
  end

  def feed
  end
end
