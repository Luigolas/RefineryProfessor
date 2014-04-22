namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Refinery::Articles::Article.create!(
        title: 'Combinatorial proofs of Honsberger-type identities',
        authors: 'Angel Plaza de la Hoz, Sergio Falcón Santana',
        reference: 'International journal of mathematical education in science and technology, ISSN 0020-739X, Vol. 39, Nº. 4, 2008, págs. 563-566',
        abstract: 'In this article, we consider some generalizations of Fibonacci numbers. We consider k-Fibonacci numbers (that follow the recurrence rule Fk,n + 2 = kFk,n + 1 + Fk,n), the (k,l)-Fibonacci numbers (that follow the recurrence rule Fk,n + 2 = kFk,n + 1 + lFk,n), and the Fibonacci p-step numbers ( [image omitted], with [image omitted], and p > 2). Then we provide combinatorial interpretations of these numbers as square and domino tilings of n-boards, and by easy combinatorial arguments Honsberger identities for these Fibonacci-like numbers are given. While it is a straightforward task to prove these identities with induction, and also by arithmetical manipulations such as rearrangements, the approach used here is quite simple to follow and eventually reduces the proof to a counting problem'
    )

    Refinery::Books::Book.create!(
        title: 'Cálculo numérico: prácticas con Mathematica',
        author:'Sergio Falcón Santana',
        isbn: '84-699-6286-8',
        abstract: ''
    )

    Refinery::Routes::Route.create!(
        name: 'SARDINA DEL SUR – ANSITE – SARDINA',
        region: 'Este',
        duration: '5 horas',
        authors: 'Sergio, Armando y Miguel Ángel',
        description: '...'
    )
  end
end