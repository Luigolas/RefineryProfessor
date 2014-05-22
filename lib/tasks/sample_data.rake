namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    I18n.locale = :en
    user = Refinery::User.create(
        :username => 'admin',
        :email => 'admin@admin.com',
        :password => '1234',
        :password_confirmation => '1234'
    )
    user.add_role :refinery
    user.add_role :superuser
    user.save!

    I18n.locale = :en
    article = Refinery::Articles::Article.create(
        title: 'Combinatorial proofs of Honsberger-type identities',
        authors: 'Angel Plaza de la Hoz, Sergio Falcón Santana',
        reference: 'International journal of mathematical education in science and technology, ISSN 0020-739X, Vol. 39, Nº. 4, 2008, págs. 563-566',
        abstract: 'In this article, we consider some generalizations of Fibonacci numbers. We consider k-Fibonacci numbers (that follow the recurrence rule Fk,n + 2 = kFk,n + 1 + Fk,n), the (k,l)-Fibonacci numbers (that follow the recurrence rule Fk,n + 2 = kFk,n + 1 + lFk,n), and the Fibonacci p-step numbers ( [image omitted], with [image omitted], and p > 2). Then we provide combinatorial interpretations of these numbers as square and domino tilings of n-boards, and by easy combinatorial arguments Honsberger identities for these Fibonacci-like numbers are given. While it is a straightforward task to prove these identities with induction, and also by arithmetical manipulations such as rearrangements, the approach used here is quite simple to follow and eventually reduces the proof to a counting problem.'
    )
    I18n.locale = :es
    article.title = 'Pruebas combinatorias de identidades de tipo Honsberger'
    article.abstract = 'En este artículo, se consideran algunas generalizaciones de los números de Fibonacci. Consideramos k-Fibonacci números (que siguen la regla de recurrencia Fk, n + 2 = kfk, n + 1 + Fk, n), el (k, l) números de Fibonacci (que siguen la regla de recurrencia Fk, n + 2 = kfk, n + 1 + LFK, n), y los números p-pasos de Fibonacci ([imagen omitidas], con [imagen omitida], y p> 2). A continuación le ofrecemos interpretaciones combinatorias de estos números cuadrados y dominó los embaldosados ​​de n-boards, y con argumentos combinatorios sencillos dan identidades Honsberger para estos números de Fibonacci similares. Si bien es una tarea sencilla para probar estas identidades con la inducción, y también por manipulaciones aritméticas tales como reordenamientos, el enfoque utilizado aquí es bastante sencillo de seguir y, finalmente, reduce la prueba a un problema de conteo.'
    article.save

    I18n.locale = :en
    book = Refinery::Books::Book.create(
        title: 'Numerical computation: practice with Mathematica',
        author:'Sergio Falcón Santana',
        isbn: '84-699-6286-8',
        abstract: ''
    )
    I18n.locale = :es
    book.title = 'Cálculo numérico: prácticas con Mathematica'
    book.save

    I18n.locale = :en
    route = Refinery::Routes::Route.create(
        name: 'SARDINA DEL SUR – ANSITE – SARDINA',
        region: 'East',
        duration: '5 h',
        authors: 'Sergio, Armando y Miguel Ángel',
        description: '...'
    )
    I18n.locale = :es
    route.region = 'Este'
    route.description = '...'
    route.save

    I18n.locale = :en
    news = Refinery::News::Item.create!(
        title: 'First New',
        body: 'This is the first new added. Welcome to this page.',
        publish_date: Time.now
    )
    I18n.locale = :es
    news.title = 'Primera Noticia'
    news.body = 'Esta es la primera noticia añadida. Bienvenidos a esta página'
    news.save

    #Pages name translations
    about_page = Refinery::Page.find_by_path('about')
    I18n.locale = :es
    about_page.title = "Sobre mí"
    about_page.save

    home_page = Refinery::Page.find_by_path('home')
    I18n.locale = :es
    home_page.title = "Principal"
    home_page.save

    news_page = Refinery::Page.find_by_path('news')
    I18n.locale = :es
    news_page.title = "Noticias"
    #news_page.show_in_menu =false
    news_page.save

    page_404 = Refinery::Page.find_by_path_or_id(2, 2)
    I18n.locale = :es
    page_404.title = "Página no encontrada"
    body = page_404.parts.find_by_title("Body")
    I18n.locale = :es
    body.body =  "<h2>Lo siento, hubo un problema...</h2><p>La página solicitada no se encuentra.</p><p><a href='/'>Volver a la página principal</a></p>"
    body.save!
    page_404.save

  end
end