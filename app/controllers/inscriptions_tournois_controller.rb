class InscriptionsTournoisController < ApplicationController
  before_action :find_by_id, only: %i[destroy show edit update]
  attr_accessor :show, :edit

  def index
    @inscriptions_tournois = InscriptionsTournoi.all
  end

  def new
    @tournoi = Tournoi.find(params[:tournoi_id])
    @inscriptions_tournoi = InscriptionsTournoi.new
    authorize @inscriptions_tournoi
  end

  def create
    @tournoi = Tournoi.find(params[:tournoi_id])
    @inscriptions_tournoi = InscriptionsTournoi.new(
      date_inscription: Date.today,
      validation_inscription_tournoi: false,
      tournoi_id: @tournoi.id,
      user_id: current_user.id
    )
    authorize @inscriptions_tournoi
    @inscriptions_tournoi.save
    redirect_to users_show_path
  end

  def destroy
    @inscriptions_tournoi.destroy
    redirect_to users_show_path
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
    authorize @inscriptions_tournoi
  end
end
