class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.sendMail.subject
  #
  default from: "sgpcmg@gmail.com"
  
#登録者情報をこのコントローラーへ送る
  
  def sendMail_participant(participant)
#   @participant=Participant.find(params[:id])
#   @participant=participant
    @name=participant.name
    mail to: participant.email, subject: "参加が確定しました！"
  end
  
  def sendMail_host(participant)
    @host_name=participant.post.user_name
    @host_email=participant.post.email
    @participant_name=participant.name
    @participant_email=participant.email
    #送信先はhostアドレス
    mail to: @host_email, subject: "新しい参加者です！"
  end
end

#メールにイベント詳細を入れる