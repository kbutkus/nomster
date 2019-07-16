require 'digest/sha2'

class NotificationMailer < ApplicationMailer
  default from: "kbutkus@gmail.com", "Message-ID": "#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@gmail.com"


  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: "kbutkus@gmail.com",
         subject: "A comment has been added #{@place.name}",
         body: "This is email body")
  end
end

