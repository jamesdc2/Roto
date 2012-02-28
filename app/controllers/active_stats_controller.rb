class ActiveStatsController < ApplicationController
  # GET /active_stats
  # GET /active_stats.json
  def index
    @active_stats = ActiveStat.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @active_stats }
    end
  end

  # GET /active_stats/1
  # GET /active_stats/1.json
  def show
    @active_stat = ActiveStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @active_stat }
    end
  end

  # GET /active_stats/new
  # GET /active_stats/new.json
  def new
    @active_stat = ActiveStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @active_stat }
    end
  end

  # GET /active_stats/1/edit
  def edit
    @active_stat = ActiveStat.find(params[:id])
  end

  # POST /active_stats
  # POST /active_stats.json
  def create
    @active_stat = ActiveStat.new(params[:active_stat])

    respond_to do |format|
      if @active_stat.save
        format.html { redirect_to @active_stat, :notice => 'Active stat was successfully created.' }
        format.json { render :json => @active_stat, :status => :created, :location => @active_stat }
      else
        format.html { render :action => "new" }
        format.json { render :json => @active_stat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /active_stats/1
  # PUT /active_stats/1.json
  def update
    @active_stat = ActiveStat.find(params[:id])

    respond_to do |format|
      if @active_stat.update_attributes(params[:active_stat])
        format.html { redirect_to @active_stat, :notice => 'Active stat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @active_stat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /active_stats/1
  # DELETE /active_stats/1.json
  def destroy
    @active_stat = ActiveStat.find(params[:id])
    @active_stat.destroy

    respond_to do |format|
      format.html { redirect_to active_stats_url }
      format.json { head :ok }
    end
  end

  # GET /active_stats/team/1
  # GET /active_stats/team/1.json
  def team
    @team = Team.where('team_id = ?',  params[:id])
    @active_stats = ActiveStat.where('team_id = ?', params[:id])

    respond_to do |format|
       format.html
       format.json
    end
  end
end
