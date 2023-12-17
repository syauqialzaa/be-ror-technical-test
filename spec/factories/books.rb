FactoryBot.define do
  factory :book do
    title { "The Theory Of Relativity" }
    genre { "Physics" }
    year { 1905 }
    author
  end
end
