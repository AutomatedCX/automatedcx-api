class VersionController < ApplicationController
  def show
    render plain: 'v6.0.7'
  end
end
