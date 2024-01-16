# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Grade.create(school_grade: "1年生")
Grade.create(school_grade: "2年生")
Grade.create(school_grade: "3年生")
Grade.create(school_grade: "4年生")

Subject.create(subject_name: "プログラミング1", grade_id: 1)
Subject.create(subject_name: "深層学習", grade_id: 2)
Subject.create(subject_name: "多変量解析", grade_id: 3)
Subject.create(subject_name: "ソフトウェア開発演習", grade_id: 3)
