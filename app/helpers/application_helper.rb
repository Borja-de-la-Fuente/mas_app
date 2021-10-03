module ApplicationHelper
    # Returns the full titile on a per-page basis.
    def full_title(page_title='')
        base_title = "Moderl Arts Studio"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end

end
