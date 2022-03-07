class PortfoliosController < ApplicationController
	def index
		@portfolios_items = Portfolio.all
	end

	def new
		@portfolios_items = Portfolio.new
	end


	def create
    @portfolios_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolios_items.save
        format.html { redirect_to portfolios_path, notice: "Your portfolio is now live" }
      else
        format.html { render :new}
      end
    end
  end

  def edit
  	@portfolios_items=Portfolio.find(params[:id])
  end

  def update
  	@portfolios_items=Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolios_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

end
