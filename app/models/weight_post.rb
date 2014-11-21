class WeightPost < ActiveRecord::Base
  
  def self.sevenDayAverage
    last7 = WeightPost.where(['weight_date >= ?', Time.now-8.days]) 
    last7.average(:weight)
  end
  
  
  
end
