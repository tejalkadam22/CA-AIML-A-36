student(tanu).

percentage(tanu, 82).
family_income(tanu, 200000).
attendance(tanu, 85).
year(tanu, 3).
category(tanu, open).

scholarship(merit_scholarship).

merit_eligible(Student) :-
    percentage(Student, Marks),
    Marks >= 75.

scholarship(attendance_scholarship).

attendance_eligible(Student) :-
    attendance(Student, Attendance),
    Attendance >= 80.

scholarship(need_based_scholarship).

need_based_eligible(Student) :-
    family_income(Student, Income),
    Income =< 250000.

scholarship(academic_scholarship).

academic_eligible(Student) :-
    percentage(Student, Marks),
    attendance(Student, Attendance),
    Marks >= 80,
    Attendance >= 75.

eligible(Student, merit_scholarship) :-
    merit_eligible(Student).

eligible(Student, attendance_scholarship) :-
    attendance_eligible(Student).

eligible(Student, need_based_scholarship) :-
    need_based_eligible(Student).

eligible(Student, academic_scholarship) :-
    academic_eligible(Student).

check_scholarships(Student, Scholarship) :-
    eligible(Student, Scholarship).
