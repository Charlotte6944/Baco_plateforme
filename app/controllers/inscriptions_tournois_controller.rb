class InscriptionsTournoisController < ApplicationController
  before_action :find_by_id, only: %i[destroy show edit update]
  attr_accessor :show, :edit

  def index
    @inscriptions_tournois = InscriptionsTournoi.all
  end

  def new
    @inscriptions_tournoi = InscriptionsTournoi.new
  end

  def create
    @inscriptions_tournoi = InscriptionsTournoi.new(InscriptionsTournoi_params)
    if @InscriptionsTournoi.save
      redirect_to InscriptionsTournoi_path(@InscriptionsTournoi)
    else
      render :new
    end
  end

  def destroy
    @InscriptionsTournoi.destroy
    redirect_to InscriptionsTournois_path
  end

  def update
    @InscriptionsTournoi.update(InscriptionsTournoi_params)
    redirect_to InscriptionsTournoi_path(@InscriptionsTournoi)
  end

  private

  def inscriptions_tournoi_params
    params.require(:InscriptionsTournoi).permit(:date_inscription, :validation_inscription_tournoi, :user_id, :tournoi_id)
  end

  def find_by_id
    @inscriptions_tournoi = InscriptionsTournoi.find(params[:id])
  end
end