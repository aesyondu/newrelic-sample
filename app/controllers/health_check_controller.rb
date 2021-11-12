class HealthCheckController < ApplicationController
  newrelic_ignore only: :index

  def index
    head :ok
  end

  def show
    head :ok
  end
end
