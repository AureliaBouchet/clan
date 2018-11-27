class RepaymentsController < ApplicationController

  def new
    @repayment = Repayment.new
    @subsidy = Subsidy.find(params[:subsidy_id])
  end

  def create
    @repayment = Repayment.new(repayment_params)
    @subsidy = Subsidy.find(params[:subsidy_id])
    @repayment.subsidy_id = @subsidy.id
    if @repayment.save
      redirect_to subsidies_path
      flash[:notice] = "Votre demande de remboursement a bien été prise en compte"
    else
      flash[:alert] = "Vous devez remplir les champs obligatoires"
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
