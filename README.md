# Anastasia Sotnikova CS32
Hospital APP


## HTTP Verbs
| HTTP METHOD | URL              | Payload | Description                                    |
|-------------|------------------|----|------------------------------------------------|
| GET         | /clinics         | {} | display all clinics                            |
| GET         | /clinics/new     | {} | returns an HTML form for creating a new clinic |
| POST        | /clinics         | {} | create new clinic                              |
| GET         | /clinics/:id/edit | {} | returns an HTML form for editing a clinic      |
| GET         | /clinics/:id   | {} | shows a specific clinic                        |
| PATCH/PUT   | /clinics/:id | {} | update a specific clinic                       |
| DELETE      | /clinics/:id | {} | delete a specific clinic                       |
| GET         | /doctors         | {} | display all doctors                            |
| GET         | /doctors/new     | {} | returns an HTML form for creating a new doctor |
| POST        | /doctors         | {} | create new doctor                              |
| GET         | /doctors/:id/edit | {} | returns an HTML form for editing a doctor      |
| GET         | /doctors/:id   | {} | shows a specific doctor                        |
| PATCH/PUT   | /doctors/:id | {} | update a specific doctor                       |
| DELETE      | /doctors/:id | {} | delete a specific doctor                       |
| GET         | /medcards         | {} | display all medcards                            |
| GET         | /medcards/new     | {} | returns an HTML form for creating a new medcard |
| POST        | /medcards         | {} | create new medcard                              |
| GET         | /medcards/:id/edit | {} | returns an HTML form for editing a medcard      |
| GET         | /medcards/:id   | {} | shows a specific medcard                        |
| PATCH/PUT   | /medcards/:id | {} | update a specific medcard                       |
| DELETE      | /medcards/:id | {} | delete a specific medcard                       |
| GET         | /pacients         | {} | display all pacients                            |
| GET         | /pacients/new     | {} | returns an HTML form for creating a new pacient |
| POST        | /pacients         | {} | create new pacient                              |
| GET         | /pacients/:id/edit | {} | returns an HTML form for editing a pacient      |
| GET         | /pacients/:id   | {} | shows a specific pacient                        |
| PATCH/PUT   | /pacients/:id | {} | update a specific pacient                       |
| DELETE      | /pacients/:id | {} | delete a specific pacient                       |
| GET         | /repartments         | {} | display all repartments                            |
| GET         | /repartments/new     | {} | returns an HTML form for creating a new repartment |
| POST        | /repartments         | {} | create new repartment                              |
| GET         | /repartments/:id/edit | {} | returns an HTML form for editing a repartment      |
| GET         | /repartments/:id   | {} | shows a specific repartment                        |
| PATCH/PUT   | /repartments/:id | {} | update a specific repartment                       |
| DELETE      | /repartments/:id | {} | delete a specific repartment                       |
| GET         | /specializations         | {} | display all specializations                            |
| GET         | /specializations/new     | {} | returns an HTML form for creating a new specialization |
| POST        | /specializations         | {} | create new specialization                              |
| GET         | /specializations/:id/edit | {} | returns an HTML form for editing a specialization      |
| GET         | /specializations/:id   | {} | shows a specific specialization                        |
| PATCH/PUT   | /specializations/:id | {} | update a specific specialization                       |
| DELETE      | /specializations/:id | {} | delete a specific specialization                       |


## ERD diagram
/img/img.png

### Labs

- [] Task 1 -> Вставити 100 записів у ваші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  Зробити по 2 SQL VIEW.
- [] Task 2 --> Зробити CRUD форми под кожну модель та додати тести