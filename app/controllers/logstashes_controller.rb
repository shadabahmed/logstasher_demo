class LogstashesController < ApplicationController
  # GET /logstashes
  # GET /logstashes.json
  def index
    @logstashes = Logstash.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @logstashes }
    end
  end

  # GET /logstashes/1
  # GET /logstashes/1.json
  def show
    @logstash = Logstash.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @logstash }
    end
  end

  # GET /logstashes/new
  # GET /logstashes/new.json
  def new
    @logstash = Logstash.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @logstash }
    end
  end

  # GET /logstashes/1/edit
  def edit
    @logstash = Logstash.find(params[:id])
  end

  # POST /logstashes
  # POST /logstashes.json
  def create
    @logstash = Logstash.new(params[:logstash])

    respond_to do |format|
      if @logstash.save
        format.html { redirect_to @logstash, notice: 'Logstash was successfully created.' }
        format.json { render json: @logstash, status: :created, location: @logstash }
      else
        format.html { render action: "new" }
        format.json { render json: @logstash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /logstashes/1
  # PUT /logstashes/1.json
  def update
    @logstash = Logstash.find(params[:id])

    respond_to do |format|
      if @logstash.update_attributes(params[:logstash])
        format.html { redirect_to @logstash, notice: 'Logstash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @logstash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logstashes/1
  # DELETE /logstashes/1.json
  def destroy
    @logstash = Logstash.find(params[:id])
    @logstash.destroy

    respond_to do |format|
      format.html { redirect_to logstashes_url }
      format.json { head :no_content }
    end
  end
end
