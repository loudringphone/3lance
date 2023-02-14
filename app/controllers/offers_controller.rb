class OffersController < ApplicationController
    before_action :set_request, only: %i[ show edit update destroy ]
    skip_before_action :is_authorized, only: [:index]
 
    # GET /offers or /offers.json
    def index
        @offers = Offer.all
        # render json format of all offers with association with request.
        # the association btw Request and Offer is has_many, that why :request is singular
        render :json => @offers.to_json(:include => :request)
    end
  
    # GET /offers/1 or /offers/1.json
    def show
        @offer = Offer.find(params[:id]);
        render :json => @offer.to_json(:include => :request)
    end
  
    # GET /offers/new
    def new
      @offer = Offer.new
    end
  
    # GET /offers/1/edit
    def edit
    end

    # POST
    def create
      @offer = Offer.new(offer_params)
  
      respond_to do |format|
        if @offer.save
          format.html { redirect_to offer_url(@offer), notice: "Offer was successfully created." }
          format.json { render :show, status: :created, location: @offer }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @offer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /offers/1 or /offers/1.json
    def update
      respond_to do |format|
        if @offer.update(offer_params)
          format.html { redirect_to offer_url(@offer), notice: "Offer was successfully updated." }
          format.json { render :show, status: :ok, location: @offer }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @offer.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /offers/1 or /offers/1.json
    def destroy
      @offer.destroy
  
      respond_to do |format|
        format.html { redirect_to offers_url, notice: "Offer was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_offer
        @offer = Offer.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def offer_params
        params.require(:offer).permit(:user_id, :offer_amount, :status, :request_id)
      end
end
