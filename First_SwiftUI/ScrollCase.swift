//
//  ScrollCase.swift
//  First_SwiftUI
//
//  Created by MacBook Air on 22.05.24.
//

import SwiftUI

struct IosNews: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}

struct ScrollCase: View {
    let someNews = [
        IosNews(image: "dato", title: "დავით ჭავჭავაძე", description: "ლექციაზე დავითმა ილიასავით შემოიდო ხელი"),
        IosNews(image: "toko", title: "თორნიკე კახიძე", description: "თორნიკემ ჯანსუღ კახიძეს სიმღერებზე გაიფურჩქნა"),
        IosNews(image: "akaki", title: "აკაკი 5 წამი", description: "აკაკიმ მწვადის შეწვის,ჭამიის ინსცენირება 5 წამში მოასწრო"),
        IosNews(image: "barbare", title: "ბარბარე ცაგარელი", description: "ბარბარემ ყველა კურსელს კითხა ზოდიაქოს შესახებ"),
        IosNews(image: "zuka", title: "ზუკა ნიჟარაძე", description: "ზუკამ შეკრებაზე ანგელოზივით იმღერა"),
        IosNews(image: "ana", title: "ანა რობოტი", description: "ანა შეკრებაზე არ გაჩერებულა"),
        IosNews(image: "alexandre", title: "ალექსანდრე მაკედონელი", description: "მთელი საღამო ბარბარეს ებრძოდა"),
        IosNews(image: "beqa", title: "ტეილორ თაბუნიძე", description: "ბექას ყველაზე დერსკი მაისურიაქვს))))"),
        
    ]
    
    var body: some View {
        List {
            ForEach(someNews, id: \.self) { news in
                HStack {
                    Image(news.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    
                    VStack(alignment: .leading) {
                        Text(news.title)
                            .font(.headline)
                        Text(news.description)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 8)
                }
                .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    ScrollCase()
}

