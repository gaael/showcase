require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference("Project.count") do
      post projects_url, params: { project: { codebase: @project.codebase, description: @project.description, front_end_framework: @project.front_end_framework, name: @project.name, rails_version: @project.rails_version, ruby_version: @project.ruby_version, url: @project.url } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { codebase: @project.codebase, description: @project.description, front_end_framework: @project.front_end_framework, name: @project.name, rails_version: @project.rails_version, ruby_version: @project.ruby_version, url: @project.url } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference("Project.count", -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
