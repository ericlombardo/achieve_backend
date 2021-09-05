
goal_1 = Goal.create( 
  title: 'In 80 days i will have lost 20 lbs in order to be healthier and have more energy',
  why: 'to be healthier and have more energy',
  dayCount: 5,
  durationEnd: Time.now + (86400 * 365),
  goalVerb: 'lose',
  goalNumber: 20,
  goalUnit: 'lbs',
)

goal_1.milestones.create([
  {
    content: 'Walk 3 times this week',
    complete: false
  },
  {
    content: 'Sign up for gym membership',
    complete: false
  },
  {
    content: 'Run a 5k race',
    complete: false
  },
  {
    content: 'Find an accountability partner',
    complete: true
  }
])


goal_2 = Goal.create( 
  title: 'In 8 days I will have quite smoking in order to be around longer for my family and friends',
  why: 'to be around longer for my family and friends',
  dayCount: 8,
  durationEnd: Time.now + (86400 * 182),
  goalVerb: 'quit smoking',
  goalNumber: '',
  goalUnit: '',
)

goal_2.milestones.create([
  {
    content: 'Only smoke half a pack for a week',
    complete: false
  },
  {
    content: 'Invest money saved into bank',
    complete: false
  },
  {
    content: 'Get rid of extra packs lying around',
    complete: false
  },
  {
    content: 'Smoke 2 a day for a week',
    complete: true
  }
])

goal_3 = Goal.create( 
  title: 'In 80 days I will have Read 3 books in order to help me grow in my personal and professional life',
  why: 'to help me grown in my personal and professional life',
  dayCount: 80,
  durationEnd: Time.now + (86400 * 56),
  goalVerb: 'read',
  goalNumber: 3,
  goalUnit: 'books',
)

goal_3.milestones.create([
  {
    content: 'Read 30 minutes a day for a week',
    complete: true
  },
  {
    content: 'Put a book in each room',
    complete: true
  },
  {
    content: 'Make a list of books to read',
    complete: true
  },
  {
    content: 'Find a quiet location without distractions to read',
    complete: true
  }
])

goal_4 = Goal.create( 
  title: 'In 720 days I will have Created 10 photos in order to express my creativity through photography',
  why: 'to express my creativity through photography',
  dayCount: 3000,
  durationEnd: Time.now + (86400 * 730),
  goalVerb: 'create',
  goalNumber: 10,
  goalUnit: 'photos',
)

goal_4.milestones.create([
  {
    content: 'Plan out concept of photo series',
    complete: false
  },
  {
    content: 'Scout locatoins for photos',
    complete: false
  },
  {
    content: 'Take 5 photos',
    complete: false
  },
  {
    content: 'Edit 5 photos',
    complete: false
  },
  {
    content: 'Revise photos for next 5',
    complete: false
  },
  {
    content: 'Take last 5 photos',
    complete: false
  },
  {
    content: 'Edit las 5 photos',
    complete: false
  },
  {
    content: 'Find gallery for show',
    complete: false
  },
  {
    content: 'Pick date for gallery show',
    complete: false
  },
  {
    content: 'Promote show',
    complete: false
  }
])

# Goal.all.each do | goal |
#   5.times do 
#     goal.activities.create(
#       title: Faker::Hobby.activity,
#       duration: Faker::Number.between(from: 1, to: 5000 ),
#       date: Faker::Date.forward(days: 2),
#       notes: Faker::Hacker.say_something_smart
#     )
#   end
# end

# get all quotes from the api
# Inspirational quotes provided by <a href="https://zenquotes.io/" target="_blank">ZenQuotes API</a>
quotes = JSON.parse(HTTParty.get('https://zenquotes.io/api/quotes'))
# loop through quotes and create new quote instances for each
quotes.each do |quote|
  Quote.create(quote: quote['q'], author: quote['a'])
end
