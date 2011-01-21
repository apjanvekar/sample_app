class OutdoorsController < ApplicationController
  # GET /outdoors
  # GET /outdoors.xml
  def index
    @outdoors = Outdoor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @outdoors }
    end
  end

  # GET /outdoors/1
  # GET /outdoors/1.xml
  def show
    @outdoor = Outdoor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @outdoor }
    end
  end

  # GET /outdoors/new
  # GET /outdoors/new.xml
  def new
    @outdoor = Outdoor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @outdoor }
    end
  end

  # GET /outdoors/1/edit
  def edit
    @outdoor = Outdoor.find(params[:id])
  end

  # POST /outdoors
  # POST /outdoors.xml
  def create
    @outdoor = Outdoor.new(params[:outdoor])

    respond_to do |format|
      if @outdoor.save
        format.html { redirect_to(@outdoor, :notice => 'Outdoor was successfully created.') }
        format.xml  { render :xml => @outdoor, :status => :created, :location => @outdoor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @outdoor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /outdoors/1
  # PUT /outdoors/1.xml
  def update
    @outdoor = Outdoor.find(params[:id])

    respond_to do |format|
      if @outdoor.update_attributes(params[:outdoor])
        format.html { redirect_to(@outdoor, :notice => 'Outdoor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @outdoor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /outdoors/1
  # DELETE /outdoors/1.xml
  def destroy
    @outdoor = Outdoor.find(params[:id])
    @outdoor.destroy

    respond_to do |format|
      format.html { redirect_to(outdoors_url) }
      format.xml  { head :ok }
    end
  end
end
