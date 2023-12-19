class CardsController < ApplicationController
    def index
        @cards = Card.where(nil)
        @syndicates = Card.order(:syndicate).distinct.pluck(:syndicate)
        @raritys = Card.order(:rarity).distinct.pluck(:rarity)
        @drops = Card.order(:drop).distinct.pluck(:drop)
        @types = Card.order(:type_of_card).distinct.pluck(:type_of_card)
        @subtypes = Card.order(:subtype).distinct.pluck(:subtype)
        # @talents = Card.order(:talents).distinct.pluck(:talents)
        @energy_costs = Card.order(:energy_cost).distinct.pluck(:energy_cost)

        
        @cards = @cards.filter_by_syndicate(params[:syndicate]) if params[:syndicate].present?
        @cards = @cards.filter_by_rarity(params[:rarity]) if params[:rarity].present?
        @cards = @cards.filter_by_drop(params[:drop]) if params[:drop].present?
        @cards = @cards.filter_by_type(params[:type_of_card]) if params[:type_of_card].present?
        @cards = @cards.filter_by_subtype(params[:subtype]) if params[:subtype].present?
        @cards = @cards.filter_by_talents(params[:talent]) if params[:talent].present?
        @cards = @cards.filter_by_energy_cost(params[:energy_cost]) if params[:energy_cost].present?
    end

    def show
        @card = Card.find(params[:id])
    end
end
