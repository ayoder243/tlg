class CardsController < ApplicationController
    def index
        @cards = Card.where(nil)
        @syndicates = Card.distinct.pluck(:syndicate)
        @raritys = Card.distinct.pluck(:rarity)
        @drops = Card.distinct.pluck(:drop)
        @types = Card.distinct.pluck(:type_of_card)
        @subtypes = Card.distinct.pluck(:subtype)
        @talents = Card.distinct.pluck(:talents)
        @energy_costs = Card.distinct.pluck(:energy_cost)

        
        @cards = @cards.filter_by_syndicate(params[:syndicate]) if params[:syndicate].present?
        @cards = @cards.filter_by_rarity(params[:rarity]) if params[:rarity].present?
        @cards = @cards.filter_by_drop(params[:drop]) if params[:drop].present?
        @cards = @cards.filter_by_type(params[:type_of_card]) if params[:type_of_card].present?
        @cards = @cards.filter_by_subtype(params[:subtype]) if params[:subtype].present?
        @cards = @cards.filter_by_talents(params[:talents]) if params[:talents].present?
        @cards = @cards.filter_by_energy_cost(params[:energy_cost]) if params[:energy_cost].present?
    end
end
