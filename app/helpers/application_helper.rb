module ApplicationHelper
    def flash_class(level)
        case level
            when "notice"
                "alert alert-success"
            when "alert"
                "alert alert-warning"
            else
                "info"
        end
    end
end
