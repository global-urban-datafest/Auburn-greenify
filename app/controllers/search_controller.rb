class SearchController < ApplicationController
	def get
		items = Item.distance_select(params[:lat], params[:lon]).where(item_type_id: params[:type_id])

		render json: items.to_json and return
	end

	def add
        Item.create(latitude: params[:lat].to_f, longitude: params[:lon], item_type_id: params[:type_id])

        render json: {message: "Thanks! Your place has been added to our list."} and return
	end
end
