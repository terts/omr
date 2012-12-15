class WineListsController < ApplicationController
  # GET /wine_lists
  # GET /wine_lists.json
  def index
    @wine_lists = WineList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wine_lists }
    end
  end

  # GET /wine_lists/1
  # GET /wine_lists/1.json
  def show
    @wine_list = WineList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wine_list }
    end
  end

  # GET /wine_lists/new
  # GET /wine_lists/new.json
  def new
    @wine_list = WineList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wine_list }
    end
  end

  # GET /wine_lists/1/edit
  def edit
    @wine_list = WineList.find(params[:id])
  end

  # POST /wine_lists
  # POST /wine_lists.json
  def create
    @wine_list = WineList.new(params[:wine_list])

    respond_to do |format|
      if @wine_list.save
        format.html { redirect_to @wine_list, notice: 'Wine list was successfully created.' }
        format.json { render json: @wine_list, status: :created, location: @wine_list }
      else
        format.html { render action: "new" }
        format.json { render json: @wine_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wine_lists/1
  # PUT /wine_lists/1.json
  def update
    @wine_list = WineList.find(params[:id])

    respond_to do |format|
      if @wine_list.update_attributes(params[:wine_list])
        format.html { redirect_to @wine_list, notice: 'Wine list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wine_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_lists/1
  # DELETE /wine_lists/1.json
  def destroy
    @wine_list = WineList.find(params[:id])
    @wine_list.destroy

    respond_to do |format|
      format.html { redirect_to wine_lists_url }
      format.json { head :no_content }
    end
  end
end
