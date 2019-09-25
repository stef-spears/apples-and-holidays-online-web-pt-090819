require 'pry'

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  
holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_supplies = []
holiday_hash.each do |season, holidays|
  holidays.each do |supplies|
    all_winter_supplies << supplies
    end
  end
all_winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # the list will go here
  supply_list = []
  
  #convert top level keys (seasons) to strings.
  holiday_hash.each do |seasons, holidays| 
     puts seasons.to_s.capitalize + ":"
     
       holidays.each do |holi,supplies|
        holi_string = holi.to_s
        holi_array = holi_string.split("_")
        holi_array.each do |word|
          word.capitalize!
        end
        new_str = holi_array.join(" ") + ":"
        
        #binding.pry
         
     end
  end


   
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
#array to hold the holidays  
bbq_holidays = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
    end
  end
end
bbq_holidays
end







