class Admin::ToursController < Admin::BaseController
  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find params[id]
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      flash.now[:success] = "tour created"
      redirect_to admin_tours_path
    else
      flash.now[:danger] = "create tour failed"
      render 'new'
    end
  end

  def destroy
    @tour = Tour.find params[:id]
    if @tour.destroy
      flash.now[:success] = " tour deleted"
      redirect_to admin_tours_path
    else
      flash.now[:danger] = " not be deleted"
      redirect_to admin_tours_path
    end
  end

  def edit
  end

  def update
    if @tour.update tour_params
      flash.now[:success] =  "tour update success"
      redirect_to admin_tours_path
    else
      flash.now[:danger] =  "tour update fail"
      render :edit
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:place, :price, :name,
                                 :start_at, :number_of_day, :picture, :order, review_attributes: [:content])
  end
end
