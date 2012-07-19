class BucketlistsController < ApplicationController

  # GET /bucketlists
  # GET /bucketlists.json
  def index
    @bucketlists = Bucketlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bucketlists }
    end
  end

  # GET /bucketlists/1
  # GET /bucketlists/1.json
  def show
    @bucketlist = Bucketlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bucketlist }
    end
  end

  # GET /bucketlists/new
  # GET /bucketlists/new.json
  def new
    @bucketlist = Bucketlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bucketlist }
    end
  end

  # GET /bucketlists/1/edit
  def edit
    @bucketlist = Bucketlist.find(params[:id])
  end

  # POST /bucketlists
  # POST /bucketlists.json
  def create
    @bucketlist = Bucketlist.new(params[:bucketlist])

    respond_to do |format|
      if @bucketlist.save
        format.html { redirect_to @bucketlist, notice: 'Bucketlist was successfully created.' }
        format.json { render json: @bucketlist, status: :created, location: @bucketlist }
      else
        format.html { render action: "new" }
        format.json { render json: @bucketlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bucketlists/1
  # PUT /bucketlists/1.json
  def update
    @bucketlist = Bucketlist.find(params[:id])

    respond_to do |format|
      if @bucketlist.update_attributes(params[:bucketlist])
        format.html { redirect_to @bucketlist, notice: 'Bucketlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bucketlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bucketlists/1
  # DELETE /bucketlists/1.json
  def destroy
    @bucketlist = Bucketlist.find(params[:id])
    @bucketlist.destroy

    respond_to do |format|
      format.html { redirect_to bucketlists_url }
      format.json { head :no_content }
    end
  end
end
