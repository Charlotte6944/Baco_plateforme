class TournoisController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_by_id, only: %i[destroy show edit update]
  attr_accessor :show, :edit

  def index
    @tournois = policy_scope(Tournoi)
  end

  def new
    @tournoi = Tournoi.new
    authorize @tournoi
  end

  def create
    @tournoi = Tournoi.new(tournoi_params)
    if @tournoi.save
      redirect_to tournois_path
    else
      render :new
    end
    authorize @tournoi
  end

  def destroy
    @tournoi.destroy
    redirect_to tournois_path, :notice => "Le tournoi a bien été supprimé!"
    authorize @tournoi
  end

  def update
    @tournoi.update(tournoi_params)
    redirect_to tournoi_path(@tournoi)
    authorize @tournoi
  end

  private

  def tournoi_params
    params.require(:tournoi).permit(:nom, :ville, :date_debut_tournoi, :date_fin_tournoi, :inscription_max, :catégories)
  end

  def find_by_id
    @tournoi = Tournoi.find(params[:id])
    authorize @tournoi
  end
end
