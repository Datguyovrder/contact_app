Group.create!([
                {name: "Family"},
                {name: "Business"},
                {name: "Out of Town"},
                {name: "Blacklisted"},
                {name: "School"}
              ])

group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  sampled_ids = group_ids.sample(rand(2..4))

  sampled_ids.each do |group_id|
    ContactGroup.create!(contact_id: contact.id, group_id: group_id)
  end
end

# Contact.create!([
#   {first_name: "Bob", last_name: "Rooooooarman", email: "carguy@yahoo.com", phone_number: "3036780055", middle_name: nil, bio: nil},
#   {first_name: "Doc", last_name: "Brown", email: "1.21Gigawatts@gmail.com", phone_number: "1234567890", middle_name: nil, bio: nil},
#   {first_name: "Egon", last_name: "Spengler", email: "gianttwinkee@gmail.com", phone_number: "1223456789", middle_name: nil, bio: nil},
#   {first_name: "Adrian", last_name: "Monk", email: "wipewipewipe@gmail.com", phone_number: "1233456789", middle_name: nil, bio: nil}
# ])
