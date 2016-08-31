class StatsController < ApplicationController
def index
@matches = Match.all
end
end
