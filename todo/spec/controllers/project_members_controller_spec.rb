require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProjectMembersController do

  # This should return the minimal set of attributes required to create a valid
  # ProjectMember. As you add validations to ProjectMember, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { :role_id => 123, :project_id => 456, :person_id => 789 } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProjectMembersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET show" do
    it "assigns the requested project_member as @project_member" do
      project_member = ProjectMember.create! valid_attributes
      get :show, {:id => project_member.to_param}, valid_session
      assigns(:project_member).should eq(project_member)
    end
  end

  describe "GET new" do
    it "assigns a new project_member as @project_member" do
      get :new, {}, valid_session
      assigns(:project_member).should be_a_new(ProjectMember)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_member as @project_member" do
      project_member = ProjectMember.create! valid_attributes
      get :edit, {:id => project_member.to_param}, valid_session
      assigns(:project_member).should eq(project_member)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProjectMember" do
        expect {
          post :create, {:project_member => valid_attributes}, valid_session
        }.to change(ProjectMember, :count).by(1)
      end

      it "assigns a newly created project_member as @project_member" do
        post :create, {:project_member => valid_attributes}, valid_session
        assigns(:project_member).should be_a(ProjectMember)
        assigns(:project_member).should be_persisted
      end

      it "redirects to the created project_member" do
        post :create, {:project_member => valid_attributes}, valid_session
        response.should redirect_to(ProjectMember.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_member as @project_member" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectMember.any_instance.stub(:save).and_return(false)
        post :create, {:project_member => {  }}, valid_session
        assigns(:project_member).should be_a_new(ProjectMember)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectMember.any_instance.stub(:save).and_return(false)
        post :create, {:project_member => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested project_member" do
        project_member = ProjectMember.create! valid_attributes
        # Assuming there are no other project_members in the database, this
        # specifies that the ProjectMember created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProjectMember.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => project_member.to_param, :project_member => { "these" => "params" }}, valid_session
      end

      it "assigns the requested project_member as @project_member" do
        project_member = ProjectMember.create! valid_attributes
        put :update, {:id => project_member.to_param, :project_member => valid_attributes}, valid_session
        assigns(:project_member).should eq(project_member)
      end

      it "redirects to the project_member" do
        project_member = ProjectMember.create! valid_attributes
        put :update, {:id => project_member.to_param, :project_member => valid_attributes}, valid_session
        response.should redirect_to(project_member)
      end
    end

    describe "with invalid params" do
      it "assigns the project_member as @project_member" do
        project_member = ProjectMember.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectMember.any_instance.stub(:save).and_return(false)
        put :update, {:id => project_member.to_param, :project_member => {  }}, valid_session
        assigns(:project_member).should eq(project_member)
      end

      it "re-renders the 'edit' template" do
        project_member = ProjectMember.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectMember.any_instance.stub(:save).and_return(false)
        put :update, {:id => project_member.to_param, :project_member => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested project_member" do
      project_member = ProjectMember.create! valid_attributes
      expect {
        delete :destroy, {:id => project_member.to_param}, valid_session
      }.to change(ProjectMember, :count).by(-1)
    end

    it "redirects to the project_members list" do
      project_member = ProjectMember.create! valid_attributes
      delete :destroy, {:id => project_member.to_param}, valid_session
      response.should redirect_to(project_members_url)
    end
  end

end
