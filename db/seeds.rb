%w[Male Female].each do |g|
  Gender.create label: g
end

%w[Small Medium Large X-Large XX-Large].each do |s|
  Size.create label: s
end


if Rails.env.development?
  AdminUser.create(email: 'admin-1@example.com', password: 'admin-1@example.com',
                   password_confirmation: 'admin-1@example.com')
  Instructor.create(name: "Instructor Mexicano", hired_on: 21.days.ago).tap do |instructor|
    instructor.create_address street_1: '#296 Francisco Marquez', city: "Puerto Vallarta",
      state: "Jalisco", country: "Mexico"

    Student.create(name: "Student B", birthday: "10/2", shirt_size: "L (m)",
                   instructor: instructor, enrolled_on: 10.days.ago).tap do |student|
      student.create_address street_1: '#6969 Francisco St', city: "San Francisco",
        state: "CA", country: "United States", postal_code: 92220
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
