# Anastasia Sotnikova CS32
Hospital APP


## HTTP Verbs
| HTTP METHOD | URL                        | Payload | Description                                               |
|-------------|----------------------------|---------|-----------------------------------------------------------|
| GET         | /clinics                   | {}      | display all clinics                                       |
| GET         | /clinics/new               | {}      | returns an HTML form for creating a new clinic            |
| POST        | /clinics                   | {}      | create new clinic                                         |
| GET         | /clinics/:id/edit          | {}      | returns an HTML form for editing a clinic                 |
| GET         | /clinics/:id               | {id}    | shows a specific clinic                                   |
| PATCH/PUT   | /clinics/:id               | {id}    | update a specific clinic                                  |
| DELETE      | /clinics/:id               | {id}    | delete a specific clinic                                  |
| GET         | /doctors                   | {}      | display all doctors                                       |
| GET         | /doctors/new               | {}      | returns an HTML form for creating a new doctor            |
| POST        | /doctors                   | {}      | create new doctor                                         |
| GET         | /doctors/:id/edit          | {}      | returns an HTML form for editing a doctor                 |
| GET         | /doctors/:id               | {id}    | shows a specific doctor                                   |
| PATCH/PUT   | /doctors/:id               | {id}    | update a specific doctor                                  |
| DELETE      | /doctors/:id               | {id}    | delete a specific doctor                                  |
| GET         | /medcards                  | {}      | display all medcards                                      |
| GET         | /medcards/new              | {}      | returns an HTML form for creating a new medcard           |
| POST        | /medcards                  | {}      | create new medcard                                        |
| GET         | /medcards/:id/edit         | {}      | returns an HTML form for editing a medcard                |
| GET         | /medcards/:id              | {id}    | shows a specific medcard                                  |
| PATCH/PUT   | /medcards/:id              | {id}    | update a specific medcard                                 |
| DELETE      | /medcards/:id              | {id}    | delete a specific medcard                                 |
| GET         | /pacients                  | {}      | display all pacients                                      |
| GET         | /pacients/new              | {}      | returns an HTML form for creating a new pacient           |
| POST        | /pacients                  | {}      | create new pacient                                        |
| GET         | /pacients/:id/edit         | {}      | returns an HTML form for editing a pacient                |
| GET         | /pacients/:id              | {id}    | shows a specific pacient                                  |
| PATCH/PUT   | /pacients/:id              | {id}    | update a specific pacient                                 |
| DELETE      | /pacients/:id              | {id}    | delete a specific pacient                                 |
| GET         | /repartments               | {}      | display all repartments                                   |
| GET         | /repartments/new           | {}      | returns an HTML form for creating a new repartment        |
| POST        | /repartments               | {}      | create new repartment                                     |
| GET         | /repartments/:id/edit      | {}      | returns an HTML form for editing a repartment             |
| GET         | /repartments/:id           | {id}    | shows a specific repartment                               |
| PATCH/PUT   | /repartments/:id           | {id}    | update a specific repartment                              |
| DELETE      | /repartments/:id           | {id}    | delete a specific repartment                              |
| GET         | /specializations           | {}      | display all specializations                               |
| GET         | /specializations/new       | {}      | returns an HTML form for creating a new specialization    |
| POST        | /specializations           | {}      | create new specialization                                 |
| GET         | /specializations/:id/edit  | {}      | returns an HTML form for editing a specialization         |
| GET         | /specializations/:id       | {id}    | shows a specific specialization                           |
| PATCH/PUT   | /specializations/:id       | {id}    | update a specific specialization                          |
| DELETE      | /specializations/:id       | {id}    | delete a specific specialization                          |
| GET         | /med_certificates          | {}      | display all med_certificates                              |
| GET         | /med_certificates/new      | {}      | returns an HTML form for creating a new med_certificate   |
| POST        | /med_certificates          | {}      | create new med_certificate                                |
| GET         | /med_certificates/:id/edit | {}      | returns an HTML form for editing a med_certificate        |
| GET         | /med_certificates/:id      | {id}    | shows a specific med_certificate                          |
| PATCH/PUT   | /med_certificates/:id      | {id}    | update a specific med_certificate                         |
| DELETE      | /med_certificates/:id      | {id}    | delete a specific med_certificate                         |
| POST        | /users                     | {}      | create new user                                           |
| DELETE      | /users                     | {}      | delete a specific user                                    |
| PATCH/PUT   | /users                     | {}      | update a specific user                                    |
| GET    | /users/sign_in       | {}      | returns an HTML form for creating a new session for user  |
| POST   | /users/sign_in      | {}      | create a new session for user                             |
| DELETE | /users/sign_out      | {}      | destroys current session for user                         |
| GET   | /users/password/new    | {}      | returns an HTML form for creating a new password for user |
| GET   | /users/password/edit   | {}      | returns an HTML form for editing a password               |
| PATCH | /users/password       | {}      | update a password                                         |
| PUT   | /users/password        | {}      | update a password                                         |
| POST  | /users/password      | {}      | creates a new password                                    |
| GET   | /users/cancel   | {}      | cancels a registration                                    |
| GET   | /users/sign_up    | {}      | returns an HTML form for signing up                       |
| GET   | /users/edit  | {}      | returns an HTML form for editing                          |




## ERD diagram
/img/img.png

### Labs

- [] Task 1 -> Вставити 100 записів у ваші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  Зробити по 2 SQL VIEW.
- [] Task 2 --> Зробити CRUD форми под кожну модель та додати тести
- [] Task 3 --> Додати гем Devise до вашого веб застосунку (повинна бути можливість зареєструватись/залогінитись/востановити пароль)
- [] Task 4 --> LB
  1.  зробити root_page (наповнення яке завгодно але повинне бути посилання на  вхід/реєстрацію)
  2. Пропрацювати інформацію про лікарні, бібліотеки (треба додати назву, рік створення)
  3.  створити таблиці як на зображені (кожна таблиця повинна мати пагінацію,  якщо ви бачите поля "number of ... " то так це кількість моделей в асоціації 🙂 не треба створвати поле треба його порахувати) (додати CSS)
  4. Створити сторінки під кожну модель
  5. Додати логіку під Пошук та Сортування ----- Створити це за допомогою QueryObject
  6. Додати тести під кожний елемент
- [] Task 5 --> LB
  зробити rake задачу котра буде парсити сайт
  1 https://www.hospitalsafetygrade.org/all-hospitals ------> Якщо у вас лб про лікарні
  2 https://en.wikipedia.org/wiki/List_of_libraries ------> Якщо у вас лб про бібліотеки
  Використовувати гем https://github.com/sparklemotion/nokogiri
  Та додавати у вашу БД назву лікарні або бібліотеки
  Додати тести
  Додати CSS/JS 🌞
- [] Task 6 --> LB
  В залежності від того с чим ви працюєте
  1) продивитись файл
  2) додати поля (Street Address,City,Zip Code) до бібліотек та (type, city, RatingMortality) у лікарні
  3) додати файл до додатка (наразі просто у папку його покладіть)
  4) розпарсить файл та зберігти дані за допомогою rake задачі
- [] Task 7 --> LB
   Додати можливість завантажувати 2 файла (СSV, PDF)
   Вимоги --
   СSV --- в одному файлі всі ваши бібліотеки або ліукарні та читачи/хворі які є в лікарні або бібліотеки (це повинно бути в одному файлі)
   PDF (може бути декілька файлів )---
   інформація про  всі ваши бібліотеки або ліукарні та читачи/хворі які є в лікарні або бібліотеки (це повинно бути в одному файлі)
   інформація про кожну окрему бібліотеку (додаті кольори та зображення)
   інформація про кожного користовача  (додаті кольори)
   додати тести
- [] Task 8 --> LB
  LB на вівторок
  додати до цього завдання ⁠⁠ks-32⁠ додати паралельне виконання
  за допомогою Thread