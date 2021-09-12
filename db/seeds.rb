# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "lola", username: "whaeve", password: "fdsafsd")

work = Journal.create(title: "Work", description: "A journal about the office life", user: user1)
life = Journal.create(title: "My Life", description: "A journal about my exceptional life", user: user1)
byebug


JournalPost.create(content: "blahfdasifjasdlkjdasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: work)

JournalPost.create(title: "Today", content: "blahfda dlsjffjlkfadjslkf; das;lfjadslsdflkdasjflk", journal: life)

JournalPost.create(title: "Weird", content: "dasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: work)

JournalPost.create(title: "How i'm feeling", content: "blajdasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: life)


