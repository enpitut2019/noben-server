subject_names = ["hoge", "hogehoge", "hogehuga", "hugahuga", "gege", "hugagaga"]

subject_names.each do |subject_name|
  Note.create(subject_name: subject_name)
end
