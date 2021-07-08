//
//  Chat.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import Foundation
struct Chat: Identifiable{
    let id = UUID()
    let uid:Int
    let avatar:String
    let text: String
    let timestamp: Int
}

let dummyChats = [
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "senectus et netus et malesuada fames ac turpis egestas.",
        timestamp: 1
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,",
        timestamp: 2
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque",
        timestamp: 3
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,",
        timestamp: 4
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis",
        timestamp: 5
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "auctor, velit eget",
        timestamp: 6
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc",
        timestamp: 7
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "magna. Cras",
        timestamp: 8
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "dolor egestas rhoncus. Proin nisl sem, consequat",
        timestamp: 9
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis",
        timestamp: 10
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "massa rutrum magna. Cras",
        timestamp: 11
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,",
        timestamp: 12
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a",
        timestamp: 13
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis",
        timestamp: 14
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,",
        timestamp: 15
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Sed eget lacus. Mauris non dui nec urna suscipit nonummy.",
        timestamp: 16
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus,",
        timestamp: 17
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt",
        timestamp: 18
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet",
        timestamp: 19
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus",
        timestamp: 20
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque",
        timestamp: 21
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque",
        timestamp: 22
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,",
        timestamp: 23
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante",
        timestamp: 24
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus",
        timestamp: 25
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna.",
        timestamp: 26
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "volutpat nunc sit",
        timestamp: 27
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem",
        timestamp: 28
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc",
        timestamp: 29
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae",
        timestamp: 30
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia",
        timestamp: 31
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "vitae erat vel pede blandit congue. In",
        timestamp: 32
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.",
        timestamp: 33
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,",
        timestamp: 34
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis",
        timestamp: 35
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus",
        timestamp: 36
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur",
        timestamp: 37
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum",
        timestamp: 38
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo",
        timestamp: 39
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "pulvinar",
        timestamp: 40
    ),
    Chat(
        uid: 1,
        avatar: "avatar-2",
        text: "Donec est mauris, rhoncus id, mollis nec, cursus a,",
        timestamp: 41
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse",
        timestamp: 42
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "elit, a feugiat tellus lorem eu metus. In lorem.",
        timestamp: 43
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,",
        timestamp: 44
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique",
        timestamp: 45
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed",
        timestamp: 46
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "faucibus lectus,",
        timestamp: 47
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer",
        timestamp: 48
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,",
        timestamp: 49
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "posuere at, velit. Cras lorem",
        timestamp: 50
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed",
        timestamp: 51
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat,",
        timestamp: 52
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.",
        timestamp: 53
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc",
        timestamp: 54
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque",
        timestamp: 55
    ),
    Chat(
        uid: 2,
        avatar: "avatar-1",
        text: "Sed eget lacus. Mauris",
        timestamp: 56
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing",
        timestamp: 57
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate",
        timestamp: 58
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.",
        timestamp: 59
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero",
        timestamp: 60
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec",
        timestamp: 61
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "auctor quis, tristique ac, eleifend vitae, erat. Vivamus",
        timestamp: 62
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus.",
        timestamp: 63
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "tellus justo sit amet nulla.",
        timestamp: 64
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie",
        timestamp: 65
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "urna. Nullam lobortis quam a felis ullamcorper viverra.",
        timestamp: 66
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum",
        timestamp: 67
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.",
        timestamp: 68
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "in lobortis",
        timestamp: 69
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "eu, odio. Phasellus",
        timestamp: 72
    ),
    Chat(
        uid: 2,
        avatar: "avatar-1",
        text: "at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet",
        timestamp: 73
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit",
        timestamp: 74
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam.",
        timestamp: 75
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.",
        timestamp: 76
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "orci. Phasellus dapibus quam",
        timestamp: 77
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "aliquet molestie tellus. Aenean egestas hendrerit neque.",
        timestamp: 78
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes,",
        timestamp: 79
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.",
        timestamp: 80
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor",
        timestamp: 81
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget",
        timestamp: 82
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut",
        timestamp: 83
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.",
        timestamp: 84
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac",
        timestamp: 85
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "erat, eget tincidunt dui augue eu",
        timestamp: 86
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem",
        timestamp: 87
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.",
        timestamp: 88
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet",
        timestamp: 89
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas",
        timestamp: 90
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer",
        timestamp: 91
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis",
        timestamp: 92
    ),
    Chat(
        uid: 2,
        avatar: "avatar-1",
        text: "laoreet, libero et tristique pellentesque, tellus",
        timestamp: 93
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt",
        timestamp: 94
    ),
    Chat(
        uid: 2,
        avatar: "avatar-2",
        text: "sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.",
        timestamp: 95
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "orci quis lectus.",
        timestamp: 97
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "enim nec",
        timestamp: 98
    ),
    Chat(
        uid: 1,
        avatar: "avatar-1",
        text: "nec, diam. Duis mi enim, condimentum",
        timestamp: 99
    )
]

