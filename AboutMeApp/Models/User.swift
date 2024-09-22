//
//  User.swift
//  AboutMeApp
//
//  Created by Igor Guryan on 20.09.2024.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    struct Person {
        let name: String
        let surname: String
        let age: Int
        let job: String
        let photo: String
        let location: String
        let email: String
        let telegram: String
        let bio: String
    }
        static func getUser() -> User {
            User(
                username: "Igor",
                password: "123",
                person: Person(
                    name: "Igor",
                    surname: "Guryan",
                    age: 31,
                    job: "Software Developer",
                    photo: "",
                    location: "Krasnodar",
                    email: "sacujo93@yandex.ru",
                    telegram: "@sacujo",
                    bio: "Родился и вырос на Дальнем Востоке России, в городе Уссурийск. В городе Владивосток получил высшее образование по специальности \"Компьютерная безопасность\". Люблю путешествия, горы, баскетбол, кино и видеоигры. Отец прекрасной девочки по имени Ева. Хозяин 3 кошек и 1 собаки. Учусь разработке iOS приложений. Моя цель - сменить род деятельности и стать грамотным разработчиком. "
                )
            )
        }
        
}
