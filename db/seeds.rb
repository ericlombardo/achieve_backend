
# goal_1 = Goal.create( 
#   title: 'lose 20 lbs',
#   why: 'to be healthier and have more energy',
#   durationNumber: 1,
#   durationUnit: 'year',
#   durationEnd: Time.now + (86400 * 365),
#   goalVerb: 'lose',
#   goalNumber: 20,
#   goalUnit: 'lbs',
#   timeSpent: 90
# )

# goal_1.milestones.create([
#   {
#     content: 'Walk 3 times this week',
#     complete: false
#   },
#   {
#     content: 'Sign up for gym membership',
#     complete: false
#   },
#   {
#     content: 'Run a 5k race',
#     complete: false
#   },
#   {
#     content: 'Find an accountability partner',
#     complete: true
#   }
# ])


# goal_2 = Goal.create( 
#   title: 'quite smoking',
#   why: 'to be around longer for my family and friends',
#   durationNumber: 6,
#   durationUnit: 'months',
#   durationEnd: Time.now + (86400 * 182),
#   goalVerb: 'quit smoking',
#   goalNumber: '',
#   goalUnit: '',
#   timeSpent: 58
# )

# goal_2.milestones.create([
#   {
#     content: 'Only smoke half a pack for a week',
#     complete: false
#   },
#   {
#     content: 'Invest money saved into bank',
#     complete: false
#   },
#   {
#     content: 'Get rid of extra packs lying around',
#     complete: false
#   },
#   {
#     content: 'Smoke 2 a day for a week',
#     complete: true
#   }
# ])

# goal_3 = Goal.create( 
#   title: 'Read 3 books',
#   why: 'to help me grown in my personal and professional life',
#   durationNumber: 6,
#   durationUnit: 'weeks',
#   durationEnd: Time.now + (86400 * 56),
#   goalVerb: 'read',
#   goalNumber: 3,
#   goalUnit: 'books',
#   timeSpent: 2880
# )

# goal_3.milestones.create([
#   {
#     content: 'Read 30 minutes a day for a week',
#     complete: true
#   },
#   {
#     content: 'Put a book in each room',
#     complete: true
#   },
#   {
#     content: 'Make a list of books to read',
#     complete: true
#   },
#   {
#     content: 'Find a quiet location without distractions to read',
#     complete: true
#   }
# ])

# goal_4 = Goal.create( 
#   title: 'Create 10 photos',
#   why: 'to express my creativity through photography',
#   durationNumber: 2,
#   durationUnit: 'years',
#   durationEnd: Time.now + (86400 * 730),
#   goalVerb: 'create',
#   goalNumber: 10,
#   goalUnit: 'photos',
#   timeSpent: 600000
# )

# goal_4.milestones.create([
#   {
#     content: 'Plan out concept of photo series',
#     complete: false
#   },
#   {
#     content: 'Scout locatoins for photos',
#     complete: false
#   },
#   {
#     content: 'Take 5 photos',
#     complete: false
#   },
#   {
#     content: 'Edit 5 photos',
#     complete: false
#   },
#   {
#     content: 'Revise photos for next 5',
#     complete: false
#   },
#   {
#     content: 'Take last 5 photos',
#     complete: false
#   },
#   {
#     content: 'Edit las 5 photos',
#     complete: false
#   },
#   {
#     content: 'Find gallery for show',
#     complete: false
#   },
#   {
#     content: 'Pick date for gallery show',
#     complete: false
#   },
#   {
#     content: 'Promote show',
#     complete: false
#   }
# ])

# Goal.all.each do | goal |
#   13.times do 
#     goal.activities.create(
#       title: Faker::Hobby.activity,
#       duration: Faker::Number.between(from: 1, to: 5000 ),
#       date: Faker::Date.forward(days: 1),
#       notes: Faker::Hacker.say_something_smart
#     )
#   end
# end