class ParticipantsController < ApplicationController

    def new
        @post=Post.find(params[:id])
    end
    
#participants#createの中に、redirect_toの前で、メール送信機能を入れる
    def create
        @participant = Participant.new(participant_params)
        @participant.save
        #fail params.inspect
#       respond_to do |format|
        UserMailer.sendMail_participant(@participant).deliver_now
        UserMailer.sendMail_host(@participant).deliver_now
#           format.html
#       end
        post = Post.find(@participant.post_id)
        redirect_to post_path(post)
    end
    
    
    private
    
    def participant_params
        params.require(:participant).permit(:name, :email, :post_id)
    end
end
