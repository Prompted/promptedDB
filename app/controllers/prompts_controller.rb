class PromptsController < ApplicationController
  before_action :set_format

  def current
    @daily = Prompt.where(type_of: 'daily', status: 'open').first
    @weekly = Prompt.where(type_of: 'weekly', status: 'open').first
    @monthly = Prompt.where(type_of: 'monthly', status: 'open').first
  end

end
