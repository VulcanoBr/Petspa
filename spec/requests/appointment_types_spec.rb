require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/appointment_types", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AppointmentType. As you add validations to AppointmentType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AppointmentType.create! valid_attributes
      get appointment_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      appointment_type = AppointmentType.create! valid_attributes
      get appointment_type_url(appointment_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_appointment_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      appointment_type = AppointmentType.create! valid_attributes
      get edit_appointment_type_url(appointment_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AppointmentType" do
        expect {
          post appointment_types_url, params: { appointment_type: valid_attributes }
        }.to change(AppointmentType, :count).by(1)
      end

      it "redirects to the created appointment_type" do
        post appointment_types_url, params: { appointment_type: valid_attributes }
        expect(response).to redirect_to(appointment_type_url(AppointmentType.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AppointmentType" do
        expect {
          post appointment_types_url, params: { appointment_type: invalid_attributes }
        }.to change(AppointmentType, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post appointment_types_url, params: { appointment_type: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested appointment_type" do
        appointment_type = AppointmentType.create! valid_attributes
        patch appointment_type_url(appointment_type), params: { appointment_type: new_attributes }
        appointment_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the appointment_type" do
        appointment_type = AppointmentType.create! valid_attributes
        patch appointment_type_url(appointment_type), params: { appointment_type: new_attributes }
        appointment_type.reload
        expect(response).to redirect_to(appointment_type_url(appointment_type))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        appointment_type = AppointmentType.create! valid_attributes
        patch appointment_type_url(appointment_type), params: { appointment_type: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested appointment_type" do
      appointment_type = AppointmentType.create! valid_attributes
      expect {
        delete appointment_type_url(appointment_type)
      }.to change(AppointmentType, :count).by(-1)
    end

    it "redirects to the appointment_types list" do
      appointment_type = AppointmentType.create! valid_attributes
      delete appointment_type_url(appointment_type)
      expect(response).to redirect_to(appointment_types_url)
    end
  end
end
