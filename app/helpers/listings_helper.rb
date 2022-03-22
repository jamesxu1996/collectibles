module ListingsHelper

    #capitalize each word in a string
    def format_condition(condition)
        condition.split("_").map {|word| word.capitalize}.join(" ")
    end

    #formats price
    def format_price(price)
        "$#{price/100.0}"
    end

    #formats date
    def format_date(date)
        format = date.in_time_zone("Australia/Melbourne")
        format.strftime("%d %b, %Y")
    end

end
