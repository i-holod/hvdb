class StudentsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @group.students.create(student_params)

    redirect_to group_path(@group)
  end

  private

  def student_params
    params.require(:student).permit(:fname,:sname,:lname,:phone,:address)
  end

end
