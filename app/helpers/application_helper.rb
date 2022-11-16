module ApplicationHelper
    def get_avatar(user)
        id = Digest::MD5::hexdigest(user.email).downcase
        url = "https://gravatar.com/avatar/#{id}.png"
    end
end
