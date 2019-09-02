module PortfoliosHelper
    def youtube_embed(youtube_url)
        if youtube_url[/youtu\.be\/([^\?]*)/]
            youtube_id = $1
        else
            # Regex from # https://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
            youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
            youtube_id = $5
        end
        
        %Q{<iframe title="YouTube video player" width="640" height="390" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
    end

    def youtube_embed_small(youtube_url)
        if youtube_url[/youtu\.be\/([^\?]*)/]
            youtube_id = $1
        else
            # Regex from # https://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
            youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
            youtube_id = $5
        end
        
        %Q{<iframe title="YouTube video player" width="287" height="174.28125" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
    end
end
