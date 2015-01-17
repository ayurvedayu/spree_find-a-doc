FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_finda_doc/factories'
  factory :city, class: Spree::City do
    name "Bangalore"
  end

  factory :suburb, class: Spree::Suburb do
    city
    name "anekal"
  end


  factory :clinic, class: Spree::Clinic do
    name 'First'
    suburb
    association :user, factory: :user
    description "About"
    clinic_type
    street "S N L road"
    building ""
  end

  factory :doctor_employment, class: Spree::DoctorEmployment do
    association :doctor, factory: :instant_doctor
    clinic
    consultation_price '100'
    consultation_currency 'INR'
  end

  factory :doctor, class: Spree::Doctor do
    user
    name 'Name'
    description 'About'
    phone '+7 985 965 63 17'
    is_for_instant_booking false
    specialties {[ FactoryGirl.create(:specialty) ]}
  end

  factory :instant_doctor, class: Spree::Doctor do
    user
    name 'Name'
    description 'About'
    phone '+7 985 965 63 17'
    is_for_instant_booking true
    specialties { [ FactoryGirl.create(:specialty) ] }
  end

  factory :clinic_type, class: Spree::ClinicType do
    name 'Ayurveda'
  end

  factory :specialty, class: Spree::Specialty do
    name 'Ayurveda'
  end

end
