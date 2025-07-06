import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1

    var body: some View {
        TabView(selection: $selectedTag) {
            HomeTabView()
            .tabItem { 
                Label("Home", systemImage: "house") 
                }.tag(1)

            WeatherTabView()
            .tabItem {
                Label("お天気", systemImage: "cloud.sun")
                }.tag(2)
                .badge(1)

            NewsTabView()
            .tabItem { 
                Label("ニュース", systemImage: "newspaper")
                 }.tag(3)
                 .badge(2)
        }
        .font(.largeTitle)
    }
}

struct HomeTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
            .resizable()
            .frame(width: 100, height: 100)
            Text("Home")
            .font(.system(size: 20))
        }
    }
}

struct WeatherTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun")
            .resizable()
            .frame(width: 100, height: 100)
            Text("お天気")
            .font(.system(size: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint.opacity(0.2))
        .ignoresSafeArea()
    }
}

struct NewsTabView: View{
    var body: some View {
        VStack {
            Image(systemName: "newspaper")
            .resizable()
            .frame(width: 100, height: 100)
            Text("ニュース")
            .font(.system(size: 20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}

struct WeatherTabView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherTabView()
    }
}

struct NewsTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewsTabView()
    }
}