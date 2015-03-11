class ChannelsController < ApplicationController

	before_action :set_channel, only: [:edit, :update, :destroy]

	def index
		@channels = Channel.all
	end

	def new
		@channel = Channel.new
	end

	def create
		@channel = Channel.new(clean_channel)
		if @channel.save
			flash[:notice] = 'Create successfuly'
			redirect_to channels_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def set_channel
			@channel = Channel.find_by(id: params[:id])
		end

		def clean_channel
			params.require(:channel).permit(:name)
		end
end
