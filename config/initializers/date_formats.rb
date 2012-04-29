my_date_formats = { :default => '%d/%m/%Y' }

Time::DATE_FORMATS.merge!(my_date_formats)
Date::DATE_FORMATS.merge!(my_date_formats)