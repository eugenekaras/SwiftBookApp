//
//  FriendsList.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 29.11.22.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView{
            List(userResponse) { user in
                Cell(user: user)
            }
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
