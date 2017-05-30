module ContentsHelper
    def set_content(user_id, place_id)
        @content = Content.find_by(user_id: user_id, place_id: place_id)
        if @content.nil?
            @content = Content.create(user_id: user_id)
        else
            return @content
        end
    end

    def hashpick(user_id, place_id, key)
        hash = set_content(user_id, place_id)
        hash[key]
    end
end
