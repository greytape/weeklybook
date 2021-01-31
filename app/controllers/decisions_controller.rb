class DecisionsController < ApplicationController
  def new
    @decision = Decision.new(group: current_group)
  end

  def create

  end
end