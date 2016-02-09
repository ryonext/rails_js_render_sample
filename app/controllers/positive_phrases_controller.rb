class PositivePhrasesController < ApplicationController
  before_action :set_positive_phrase, only: [:show, :edit, :update, :destroy]

  # GET /positive_phrases
  # GET /positive_phrases.json
  def index
    @positive_phrases = PositivePhrase.all
  end

  # GET /positive_phrases/1
  # GET /positive_phrases/1.json
  def show
  end

  # GET /positive_phrases/new
  def new
    @positive_phrase = PositivePhrase.new
  end

  # GET /positive_phrases/1/edit
  def edit
  end

  # POST /positive_phrases
  # POST /positive_phrases.json
  def create
    @positive_phrase = PositivePhrase.new(positive_phrase_params)

    respond_to do |format|
      if @positive_phrase.save
        format.html { redirect_to @positive_phrase, notice: 'Positive phrase was successfully created.' }
        format.json { render :show, status: :created, location: @positive_phrase }
      else
        format.html { render :new }
        format.json { render json: @positive_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positive_phrases/1
  # PATCH/PUT /positive_phrases/1.json
  def update
    respond_to do |format|
      if @positive_phrase.update(positive_phrase_params)
        format.html { redirect_to @positive_phrase, notice: 'Positive phrase was successfully updated.' }
        format.json { render :show, status: :ok, location: @positive_phrase }
      else
        format.html { render :edit }
        format.json { render json: @positive_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positive_phrases/1
  # DELETE /positive_phrases/1.json
  def destroy
    @positive_phrase.destroy
    respond_to do |format|
      format.html { redirect_to positive_phrases_url, notice: 'Positive phrase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positive_phrase
      @positive_phrase = PositivePhrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def positive_phrase_params
      params.require(:positive_phrase).permit(:text)
    end
end
