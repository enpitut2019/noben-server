subjects = ["hoge", "hogehoge", "hogehuga", "hugahuga", "gege", "hugagaga"]

subjects.each do |subject|
  Note.create(subject: subject)
end
