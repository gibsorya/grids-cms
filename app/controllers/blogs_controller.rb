# frozen_string_literal: true

class BlogsController < ApplicationController
  load_and_authorize_resource

  def current_ability
    @current_ability ||= BlogAbility.new(current_user)
  end
end
