class NotificationMailer < ApplicationMailer
  default from: "kbutkus@gmail.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: "kbutkus@gmail.com",
         subject: "A comment has been added #{@place.name}")
  end
end
