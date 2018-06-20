class Author
    attr_accessor :name :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts << post
        post.artist = self
    end

    def add_post_by_title(post)
        

end
