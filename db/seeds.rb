# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cards =
  {
    "id": 1,
    "name": 'goal_money',
    "data": {
      "headline": 'How much money do you have to put towards your goals?',
      "yes": null,
      "no": null,
      "number": 0,
      "next": 'offer_401k'
    }
  },
  {
    "id": 2,
    "name": 'offer_401k',
    "data": {
      "headline": 'Does your employer offer a 401(k) plan?',
      "yes": 'company_match',
      "no": 'cc_debt',
      "number": null,
      "continue": null
    }
  },
  {
    "id": 3,
    "name": 'company_match',
    "data": {
      "headline": 'What percentage of your contributions does your company match?',
      "yes": null,
      "no": null,
      "number": 0,
      "continue": 'contribution_amt'
    }
  },
  {
    "id": 4,
    "name": 'cc_debt',
    "data": {
      "headline": 'Do you have credit card debt?',
      "yes": 'how_much_debt',
      "no": 'post_debt_determination',
      "number": null,
      "continue": null
    }
  }
