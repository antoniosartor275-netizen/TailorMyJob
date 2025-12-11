puts "cleaning database..."
Application.destroy_all
Cv.destroy_all
User.destroy_all

User.create!(email: "a@a", password: 123456, name: "as")
User.create!(email: "b@b", password: 123456, name: "bs")

users = User.all
users.each do |user|
  Cv.create!(user: user, file: "file", parsed_text: "parsed_text")
  Cv.create!(user: user, file: "file2", parsed_text: "parsed_text2")
end

cvs = Cv.all
cvs.each do |cv|
  Application.create!(cv: cv,user: cv.user, job_description: "job_description", tailored_cv: "tailored_cv", cover_letter: "cover_letter" )
  Application.create!(cv: cv,user: cv.user, job_description: "job_description2", tailored_cv: "tailored_cv2", cover_letter: "cover_letter2" )
end