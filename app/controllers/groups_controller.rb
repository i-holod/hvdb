class GroupsController < ApplicationController

  def new
  end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @show_all = Group.order "created_at DESC"
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group
    else
      render action: 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group
    else
      render action: 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name,:cat)
  end

end
