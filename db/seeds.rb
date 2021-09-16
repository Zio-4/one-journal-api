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



JournalPost.create(content: "blahfdasifjasdlkjdasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: work)

JournalPost.create(title: "Today", content: "blahfda dlsjffjlkfadjslkf; das;lfjadslsdflkdasjflk", journal: life)

JournalPost.create(title: "Weird", content: "dasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: work)

JournalPost.create(title: "How i'm feeling", content: "blajdasl adsfljfadlsjffjlkfadjslkf; das;lfjadslkfajdsfkljsdflkdasjflk", journal: life)

JournalPost.create(title: "Latin Day", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas risus dolor, finibus sagittis mattis iaculis, convallis tristique massa. Duis interdum mattis est, non posuere nisi eleifend eget. In hac habitasse platea dictumst. Vestibulum nec felis lobortis ligula venenatis euismod. Ut ac ultricies lectus, et placerat arcu. Nam tincidunt fermentum augue et gravida. Aliquam erat volutpat. Integer ac lorem dapibus lacus euismod feugiat quis eu ante. Quisque laoreet aliquet ipsum, in blandit lacus. Maecenas ultricies erat justo, a accumsan diam sagittis sed. Donec imperdiet mauris in vulputate congue.", journal: work)

JournalPost.create(title: "Atin Ay", content: "Nam dignissim in dui nec egestas. Cras nisl urna, eleifend a consectetur tincidunt, volutpat ac nulla. Duis quis ipsum varius felis varius blandit at ut ligula. Proin a enim iaculis, pulvinar erat id, condimentum mauris. Suspendisse vel velit tempor, semper elit ut, congue metus. Phasellus lacinia et enim dictum feugiat. Cras mollis semper lacus eget rhoncus. Duis non imperdiet nisi.

Vivamus dapibus velit vitae ante ornare fringilla. Maecenas et accumsan lacus, quis cursus orci. Integer eget libero vel ante convallis porttitor non sit amet enim. Maecenas vel velit lacus. Fusce eget cursus diam. Vivamus sed sodales massa. Proin massa libero, condimentum non gravida eget, feugiat eu nisi. Quisque eu iaculis lorem, id porttitor nisi. Fusce mattis pulvinar felis, a tincidunt ligula gravida nec. Nullam id nisi et turpis pharetra aliquet. Nunc odio massa, malesuada ut efficitur ultrices, molestie vel odio. Aliquam hendrerit turpis at orci scelerisque luctus. Donec tempor venenatis massa, non maximus lacus vehicula sit amet. Fusce a rhoncus risus, a rutrum tortor. Praesent eget massa nisl.", journal: work)