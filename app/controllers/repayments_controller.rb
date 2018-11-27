class RepaymentsController < ApplicationController

  def new
    @repayment = Repayment.new
    @subsidy = Subsidy.find(params[:subsidy_id])
  end

  def create
    @repayment = Repayment.new(repayment_params)
    @subsidy = Subsidy.find(params[:subsidy_id])
    @repayment.subsidy_id = @subsidy.id
    if @repayment.amount.nil? || @repayment.amount <= @subsidy.amount
      if @repayment.save
        flash[:notice] = "Votre demande de remboursement a bien été prise en compte"
        render :new_success
      else
        flash[:alert] = "Vous devez remplir les champs obligatoires"
        render :new
      end
    else
      flash[:alert] = "Le montant du remboursement ne doit pas excéder le maximum autorisé"
      render :new
    end

  end

  # def index
  #   @repayments = Repayment.all
  # end

  private

  def repayment_params
    params.require(:repayment).permit(:mail, :photo, :amount)
  end


end
