class IndoorsController < ApplicationController
  # GET /indoors
  # GET /indoors.xml
  def index
    @indoors = Indoor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @indoors }
    end
  end

  # GET /indoors/1
  # GET /indoors/1.xml
  def show
    @indoor = Indoor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @indoor }
    end
  end

  # GET /indoors/new
  # GET /indoors/new.xml
  def new
    @indoor = Indoor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @indoor }
    end
  end

  # GET /indoors/1/edit
  def edit
    @indoor = Indoor.find(params[:id])
  end

  # POST /indoors
  # POST /indoors.xml
  def create
    @indoor = Indoor.new(params[:indoor])

    respond_to do |format|
      if @indoor.save
        format.html { redirect_to(@indoor, :notice => 'Indoor was successfully created.') }
        format.xml  { render :xml => @indoor, :status => :created, :location => @indoor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @indoor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /indoors/1
  # PUT /indoors/1.xml
  def update
    @indoor = Indoor.find(params[:id])

    respond_to do |format|
      if @indoor.update_attributes(params[:indoor])
        format.html { redirect_to(@indoor, :notice => 'Indoor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @indoor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /indoors/1
  # DELETE /indoors/1.xml
  def destroy
    @indoor = Indoor.find(params[:id])
    @indoor.destroy

    respond_to do |format|
      format.html { redirect_to(indoors_url) }
      format.xml  { head :ok }
    end
  end
end
