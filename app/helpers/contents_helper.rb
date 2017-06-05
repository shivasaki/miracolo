module ContentsHelper
    def set_content(user_id, place_id)
        @content = Content.find_by(user_id: user_id, place_id: place_id)
        if @content.nil?
            @content = Content.create(title: "TITLE", text: "TEXT", start: Time.zone.now, end: Time.zone.now, user_id: user_id, place_id: 99)
        else
            return @content
        end
    end

    def hashpick(user_id, place_id, key)
        hash = set_content(user_id, place_id)
        hash[key]
    end
end
