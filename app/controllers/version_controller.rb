class VersionController < ApplicationController
  def show
    render plain: 'v4.4.0'
  end
end
