class ParticipantsController < ApplicationController

    def new
        @post=Post.find(params[:id])
    end
    
    def create
        @participant = Participant.new(participant_params)
        @participant.save
        #fail params.inspect
        post = Post.find(@participant.post_id)
        redirect_to post_path(post)
    end
    
    
    private
    
    def participant_params
        params.require(:participant).permit(:name, :email, :post_id)
    end
end
