class CommentsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.submitted.subject
  #

  #take a comment
  def submitted(comment)
    # then assign them to an instant variable, means that that instant variable will be automatically be available to the view
    @comment = comment

    mail to: "blog-owner@example.org", subject: 'New comment!'
  end
end
