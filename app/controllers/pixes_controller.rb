class PixesController < ApplicationController
  # GET /pixes
  # GET /pixes.json
  def index
    @pixes = Pix.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pixes }
    end
  end

  # GET /pixes/1
  # GET /pixes/1.json
  def show
    @pix = Pix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pix }
    end
  end

  # GET /pixes/new
  # GET /pixes/new.json
  def new
    @pix = Pix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pix }
    end
  end

  # GET /pixes/1/edit
  def edit
    @pix = Pix.find(params[:id])
  end

  # POST /pixes
  # POST /pixes.json
  def create
    @pix = Pix.new(params[:pix])

    respond_to do |format|
      if @pix.save
        format.html { redirect_to @pix, notice: 'Pix was successfully created.' }
        format.json { render json: @pix, status: :created, location: @pix }
      else
        format.html { render action: "new" }
        format.json { render json: @pix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pixes/1
  # PUT /pixes/1.json
  def update
    @pix = Pix.find(params[:id])

    respond_to do |format|
      if @pix.update_attributes(params[:pix])
        format.html { redirect_to @pix, notice: 'Pix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pixes/1
  # DELETE /pixes/1.json
  def destroy
    @pix = Pix.find(params[:id])
    @pix.destroy

    respond_to do |format|
      format.html { redirect_to pixes_url }
      format.json { head :no_content }
    end
  end
end
