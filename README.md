Interview App
================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.2
- Rails 5.1.5

Getting Started
---------------
Aplikacja posiada 2 modele, Log oraz LogComment
Uruchom rake db:seed aby załadować dane


TODO
-------------
Do modelu Log należy dodać walidacje:
- unikalność kolumny „name”
- kolumny name, description, status nie mogą być puste.
- Status może przybierać wartości tylko: „new”, „closed"

Do modelu LogComment należy dodać walidacje:
- comment nie może być puste

Dodajmy mechanizm do zmiany statusu logu (kolumna status). Najlepiej przy użyciu gemu: https://github.com/aasm/aasm
Po stworzeniu nowego logu status powinien przybierać wartość „new”.

Dodaj obsługę przycisku „Close" który zmienia status logu na „closed”.

Dodaj możliwość dodawania log_comments do modelu Log. Prosty formularz i controller.
Możliwość dodawania tylko w momencie kiedy status komentowanego logu jest „new”
