FactoryGirl.define do
  
  factory :post do
    observation "He was good at maths"
    pupils { [create(:pupil)] }
  end
  
end