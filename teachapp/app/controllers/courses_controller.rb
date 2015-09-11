class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def create
    @course = Course.new(post_params)

    if @course.save
      render json: { message: "400 Bad Request" }, status: :bad_request unless @course.save
    else
      render :show
    end
  end

  def update
    @course = Course.find_by_id(params[:id])

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    else  
      if @course.update(course_params)
        render :show
      else
        render json: { message: "Cannot find course" }, status: :not_found
      end
    end
  end

  def show
    @course = Course.find_by_id(params[:id])

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    end
  end

  def destroy
    @course = Course.find_by_id(params[:id])

    if @course.nil?
      render json: { message: "Cannot find course" }, status: :not_found
    else
      if @course.destroy
        render json: { message: "Successfully deleted" }
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private

  def course_params
    params.require(:post).permit(:title, :description, :image, :category, :price, :video)
  end

end
