class ProductMastersController < ApplicationController
  def index
    @product_masters = ProductMaster.all
  end

   def show
    @product_master = ProductMaster.find(params[:id])
   end

  def new
    @product_master = ProductMaster.new
  end

 
  def edit
    @product_master = ProductMaster.find(params[:id])
  end

  def create
    @product_master = ProductMaster.new(params[:product_master])
    respond_to do |format|
      if @product_master.save
        format.html { redirect_to(@product_master, :notice => 'ProductMaster was successfully created.') }
        format.xml  { render :xml => @product_master, :status => :created, :location => @product_master }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def update
    @product_master = ProductMaster.find(params[:id])

    respond_to do |format|
      if @product_master.update_attributes(params[:product_master])
        format.html { redirect_to(@product_master, :notice => 'ProductMaster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_master.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @product_master = ProductMaster.find(params[:id])
    @product_master.destroy
     redirect_to(product_masters_url) 
  end
end
