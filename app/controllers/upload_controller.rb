class UploadController < ApplicationController
  def index
    @uploads= Upload.all
     respond_to do |format|
       format.html
       format.xml {render :xml=> @uploads}
     end
  end
  def show
    @upload = Upload.find(params[:id])
    respond_to do |format|
      format.html
      format.xml {render :xml=> @uploads}
    end
  end

  def new
    @upload= Upload.new
    respond_to do |format|
      format.html
      format.xml {render :xml=> @uploads}
    end
  end
  def create
    @upload= Upload.new(params[:upload])
    respond_to do |format|
      if @upload.save
        format.html {redirect_to(@upload, :notice => "upload successful")}
        format.xml {render :xml => @upload, :status => :created, :location => @upload}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end
end
