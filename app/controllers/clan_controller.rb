class ClanController < ApplicationController

	def index
	end

	def banniere
	end

	def news
	end

	def raid
	end

	def les_membres
	end

	def tchat
		@tchat = Clan.all()
	end

	def create
		@tchat = Clan.new(tchat_params)
  		@tchat.save
  		redirect_to tchat_path
	end

	def edit
		@tchat = Clan.find(params[:id])
		@tchat.update(edit_message)
		redirect_to tchat_path
	end

	def suppr
		@tchat = Clan.find(params[:id])
		@tchat.destroy
		redirect_to tchat_path
	end

	private
		def tchat_params
			params.require(:tchat).permit(:name, :message)
		end
		def edit_message
			params.require(:tchat).permit(:message)
		end

end
