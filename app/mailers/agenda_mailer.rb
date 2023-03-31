class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    @members = Team.find(@agenda.team_id).users
    mail to: @members.pluck(:email), subject: "アジェンダ削除の確認メール"
  end
end