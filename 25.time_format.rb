# Method name: time_format
# Inputs:      A number, representing seconds
# Returns:     A string, describing the number of weeks, days, minutes, seconds
# Prints:      Nothing


def time_format(seconds)
    days = 0
    weeks = 0
    hours = 0
    minutes = 0

    seconds.downto(0) do |i|
        if i%60 == 0 && i != 0
            minutes = minutes + 1
            seconds = seconds - 60
        end
    end

    minutes.downto(0) do |i|
        if i%60 == 0 && i != 0
            hours = hours + 1
            minutes = minutes - 60
        end
    end

    hours.downto(0) do |i|
        if i%24 == 0 && i != 0
            days = days + 1
            hours = hours - 24
        end
    end

    days.downto(0) do |i|
        if i%7 == 0 && i != 0
            weeks = weeks + 1
            days = days - 7
        end
    end
    
    if weeks == 0 
        if days == 0 
            if hours == 0
                if minutes == 0 
                    return seconds.to_s + "s"
                end
                return minutes.to_s + "m " + seconds.to_s + "s"
            end 
            return hours.to_s + "h " + minutes.to_s + "m " + seconds.to_s + "s"
        end
        return days.to_s + "d " + hours.to_s + "h " + minutes.to_s + "m " + seconds.to_s + "s"
    else 
        return  weeks.to_s + "w " + days.to_s + "d " + hours.to_s + "h " + minutes.to_s + "m " + seconds.to_s + "s"
    end

end

if __FILE__ == $PROGRAM_NAME

    p time_format(0)    == "0s"
    p time_format(1)    == "1s"
    p time_format(59)   == "59s"
    p time_format(60)   == "1m 0s"
    p time_format(61)   == "1m 1s"
    p time_format(3599)   == "59m 59s"
    p time_format(3600) == "1h 0m 0s"
    p time_format(86400) == "1d 0h 0m 0s"
    p time_format(604800) == "1w 0d 0h 0m 0s"
    p time_format(691200) == "1w 1d 0h 0m 0s"
    p time_format(694861) == "1w 1d 1h 1m 1s"
end