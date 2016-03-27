class ParticipntController < ApplicationController

    def new
        @post=Post.find(params[:id])
    end
    
    def create
        fail params.inspect
        @participant=Participant.new(
            name: ,
            email: ,
            post_id: 
            )
        @participant.save
        post = Post.find(@participant.post_id)
        redirect_to post_path(post)
    end
    
    
    private
    
    def participant_params
        params.require(:participant).permit(:name, :email, :post_id)
    end
end
