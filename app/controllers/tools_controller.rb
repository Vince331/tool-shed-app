class ToolsController < ApplicationController
  def index
   @tools = Tool.all
  end

  def show
    @tool =Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    Tool.create(name: params[:tool][:name],price: params[:tool][:price], quantity: params[:tool][:quantity])
    redirect_to tools_path
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
   p @tool =Tool.find(params[:id])
   @tool.update(name: params[:tool][:name],price: params[:tool][:price], quantity: params[:tool][:quantity])
   #redirect_to tool_path(Tool.find(params[:id]))
    redirect_to tool_path(@tool)
  end

  def destroy
    @tool =Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path
  end

end
