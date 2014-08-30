class BlogReportsController < ApplicationController
  before_action :set_blog_report, only: [:show, :edit, :update, :destroy]

  # GET /blog_reports
  # GET /blog_reports.json
  def index
    @blog_reports = BlogReport.all
  end

  # GET /blog_reports/1
  # GET /blog_reports/1.json
  def show
  end

  # GET /blog_reports/new
  def new
    @blog_report = BlogReport.new
  end

  # GET /blog_reports/1/edit
  def edit
  end

  # POST /blog_reports
  # POST /blog_reports.json
  def create
    @blog_report = BlogReport.new(blog_report_params)

    respond_to do |format|
      if @blog_report.save
        format.html { redirect_to @blog_report, notice: 'Blog report was successfully created.' }
        format.json { render :show, status: :created, location: @blog_report }
      else
        format.html { render :new }
        format.json { render json: @blog_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_reports/1
  # PATCH/PUT /blog_reports/1.json
  def update
    respond_to do |format|
      if @blog_report.update(blog_report_params)
        format.html { redirect_to @blog_report, notice: 'Blog report was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_report }
      else
        format.html { render :edit }
        format.json { render json: @blog_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_reports/1
  # DELETE /blog_reports/1.json
  def destroy
    @blog_report.destroy
    respond_to do |format|
      format.html { redirect_to blog_reports_url, notice: 'Blog report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_report
      @blog_report = BlogReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_report_params
      params.require(:blog_report).permit(:file_title, :title, :body)
    end
end
