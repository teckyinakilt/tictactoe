class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new()
    # TODO: reformat to prevent user injection
    @match.play_in_position(params[:button])

    if @match.save
      render :edit
    else
      render :new
    end

  end
  
  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    # TODO: reformat to prevent user injection
    @match.play_in_position(params[:button])
    @match.save
    
    if @match.winning_state == "open"
      render :edit
    else
      redirect_to @match
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # totally breaking this thought process for expediancy, TODO: bring back security
    # def match_params
    #   params.require(:match).permit(:winning_state, :current_player)
    # end
end
