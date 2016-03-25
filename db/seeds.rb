%w[Male Female].each do |g|
  Gender.create name: g
end

%w[Small Medium Large X-Large XX-Large].each do |s|
  Size.create name: s
end


if Rails.env.development?
  Lead.create name: "lead 1", email: 'lead-1@example.com'

  Lead.create(name: "lead 2", email: 'lead-2@example.com').tap do |lead|
    lead.create_interview_request!
  end

  Lead.create(name: "lead 3", email: 'lead-3@example.com').tap do |lead|
    lead.create_interview_request!
    lead.create_enrollment_invite!
  end

  AdminUser.create(email: 'admin-1@example.com', password: 'admin-1@example.com',
                   password_confirmation: 'admin-1@example.com')

  Instructor.create(name: "Instructor Mexicano", hired_on: 21.days.ago).tap do |instructor|
    instructor.create_address street_1: '#296 Francisco Marquez', city: "Puerto Vallarta",
      state: "Jalisco", country: "Mexico"

    Student.create(name: "Student A", birthday: "Oct 10th",
                   instructor: instructor, enrolled_on: 10.days.ago).tap do |student|
      student.create_address street_1: '#6969 Francisco St', city: "San Francisco",
        state: "CA", country: "United States", postal_code: 92220
    end
  end

  Instructor.create(name: "Instructor California", hired_on: 1.year.ago).tap do |instructor|
    instructor.create_address street_1: '1992 Vista way', city: "San Diego",
      postal_code: 92017, state: "CA", country: "USA"

    Student.create(name: "Student B", birthday: "Jan 5th",
                   instructor: instructor, enrolled_on: 10.days.ago).tap do |student|
      student.create_address street_1: '2732 Wall St', city: "Quincy",
        state: "OH", country: "United States", postal_code: 67872
    end
  end


  letter = Letter.create label: "Birthday wishes", contents: <<-EOS
 Hello and happy birthday!

 Sincerely,

 Jim OKelly
  EOS

  shirt = Shirt.create color: :red, size: :l

  Student.first.shipments.create(label: "Birthday letter + shirts", sent_on: 1.day.ago).tap do |ship|
    ship.line_items.create item: letter, qty: 1
    ship.line_items.create item: shirt, qty: 2
  end

end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
