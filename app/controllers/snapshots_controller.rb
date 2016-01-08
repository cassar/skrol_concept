class SnapshotsController < ApplicationController
  def index
    @snapshot = Snapshot.all
  end

  def new
    @snapshot = Snapshot.new
  end

  def create
    @snapshot = Snapshot.new(snapshot_params)
    if @snapshot.save
      redirect_to @snapshot
    else
      render 'new'
    end
  end

  def show
    @snapshot = Snapshot.find(params[:id])
  end

  def edit
    @snapshot = Snapshot.find(params[:id])
  end

  def update
    @snapshot = Snapshot.find(params[:id])
    if @snapshot.update_attributes(snapshot_params)
      redirect_to @snapshot
    else
      render 'edit'
    end
  end

  private

  def snapshot_params
    params.require(:snapshot).permit(:title, :language, :entry)
  end
end
