class PetAdoptionFormsController < ApplicationController
  def create
    PetAdoptionForm.find_or_create_by!(pet_id: params[:pet_id], adoption_form_id: params[:adoption_form_id])
    redirect_to "/adoption_forms/#{params[:adoption_form_id]}"
  end

  def destroy
    form = AdoptionForm.find(params[:adoption_form_id])
    connection = PetAdoptionForm.find_by(pet_id: params[:pet_id], adoption_form_id: params[:adoption_form_id])
    connection.destroy
    redirect_to "/adoption_forms/#{form.id}"
  end
end
