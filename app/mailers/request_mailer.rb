class RequestMailer < ApplicationMailer
  default from: "notifications@example.com"

  def receive_request
    @user = params[:user]
    mail(to: @user.email, subject: "依頼が届きました。")
  end

  def change_request
    @user = params[:user]
    mail(to: @user.email, subject: "修正依頼が届きました。")
  end
end
