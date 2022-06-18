import SwiftUI

struct ContentView: View {
    var friends: [Friend] = [
        Friend(name: "human", icon: "globe", school: "SST 👍", slothImage: "sloth1"),
        Friend(name: "human", icon: "mail", school: "SST 👍", slothImage: "sloth2"),
        Friend(name: "human", icon: "swift", school: "SST 👍", slothImage: "sloth3")
    ]
    var body: some View {
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination: FriendDetailView(friend: friend)) {
                    Image(systemName: friend.icon)
                    VStack{
                        Text(friend.name)
                        Text(friend.school)
                    }
                }
            }
            .navigationTitle("Friends")
        }
        
    }
}
