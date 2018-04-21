# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
WebSite.create(content: "www.firat.edu.tr");
WebSite.create(content: "www.metu.edu.tr");
WebSite.create(content: "www.itu.edu.tr");

University.create(name: "Firat University", web_site_id: 1);
University.create(name: "METU University", web_site_id: 2);
University.create(name: "Istanbul Technical University", web_site_id: 3);

Faculty.create(name: "Technology Faculty");
Faculty.create(name: "Engineering Faculty");
Faculty.create(name: "Medicine Faculty");

Department.create(name: "Software Engineering");
Department.create(name: "Machine   Engineering");
Department.create(name: "Docdoral");

Course.create(name: "Machine 1");
Course.create(name: "Data Structures");
Course.create(name: "Humman Anatomy");

unvfac = UnvFac.create
unvfac.university_id = 1
unvfac.faculty_id = 1
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 1
unvfac.faculty_id = 2
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 1
unvfac.faculty_id = 3
unvfac.save

unvfac = UnvFac.create
unvfac.university_id = 2
unvfac.faculty_id = 1
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 2
unvfac.faculty_id = 2
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 2
unvfac.faculty_id = 3
unvfac.save

unvfac = UnvFac.create
unvfac.university_id = 3
unvfac.faculty_id = 1
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 3
unvfac.faculty_id = 2
unvfac.save
unvfac = UnvFac.create
unvfac.university_id = 3
unvfac.faculty_id = 3
unvfac.save

facdep = FacDep.create
facdep.unv_fac_id = 1
facdep.department_id = 1
facdep.save
facdep = FacDep.create
facdep.unv_fac_id = 2
facdep.department_id = 2
facdep.save
facdep = FacDep.create
facdep.unv_fac_id = 3
facdep.department_id = 3
facdep.save

depcour = DepCour.create
depcour.fac_dep_id = 1
depcour.course_id = 2
depcour.save
depcour = DepCour.create
depcour.fac_dep_id = 1
depcour.course_id = 1
depcour.save
depcour = DepCour.create
depcour.fac_dep_id = 1
depcour.course_id = 3
depcour.save

depcour = DepCour.create
depcour.fac_dep_id = 2
depcour.course_id = 1
depcour.save
depcour = DepCour.create
depcour.fac_dep_id = 2
depcour.course_id = 2
depcour.save
depcour = DepCour.create
depcour.fac_dep_id = 3
depcour.course_id = 1
depcour.save
depcour = DepCour.create
depcour.fac_dep_id = 3
depcour.course_id = 3
depcour.save