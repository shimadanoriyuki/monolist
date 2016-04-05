class RankingController < ApplicationController
  def have
    @items = Have.group('item_id').order("count_all DESC").limit(10).count
  end
  def want
    @items = Want.group('item_id').order("count_all DESC").limit(10).count
  end
  
end
