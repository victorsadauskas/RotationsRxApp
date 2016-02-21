M4comment.create!([
  {name: "Comment 1", body: "Here she is", rating: nil, m4rotation_id: 1}
])
M4rotation.create!([
  {name: "Neurosurgery", duration: "4 weeks", location: "OSF hospital ", hours: "10"},
  {name: "Biostats", duration: nil, location: nil, hours: nil}
])
Rotation.create!([
  {name: "Family Medicine", duration: nil, location: nil, hours: nil},
  {name: "Internal Medicine (Not UHATS)", duration: nil, location: nil, hours: nil},
  {name: "Obstetrics & Gynecology", duration: nil, location: nil, hours: nil},
  {name: "Pediatrics", duration: "8 weeks", location: "OSF Hospital, Clinic", hours: "40 - 60"},
  {name: "Psychiatry", duration: nil, location: nil, hours: nil},
  {name: "Surgery", duration: nil, location: nil, hours: nil},
  {name: "UHATS", duration: nil, location: nil, hours: nil}
])
User.create!([
  {name: "admin", email: "rrxadmin@uic.edu", password_digest: "$2a$10$29W7Kab1Y9ZSpZeMqWgfJ.EVM.oiDKmxAQfv9DZzEuzjuGdg896vi", admin: true},
  {name: "Victor", email: "vsadau2@uic.edu", password_digest: "$2a$10$JBbdk9DVTsNmgTYi0T1wFetA9cb7MZtyvPkEPMqGn5xncKpUNsjSO", admin: false}
])
