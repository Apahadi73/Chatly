//
//  MessageInfo.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import Foundation

struct MessageInfo:Identifiable {
    let id = UUID()
    let userName:String
    let lastMessage:String
    let avatar:String
}

//dummyList
var dummyMList = [
    MessageInfo(
        userName: "Mary E. Summers",
        lastMessage: "eget tincidunt dui",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Scott Z. Orr",
        lastMessage: "sollicitudin a,",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "TaShya C. Brooks",
        lastMessage: "consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Aurelia M. Gentry",
        lastMessage: "urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Shea Q. Olson",
        lastMessage: "sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Xaviera U. Washington",
        lastMessage: "Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Yvette O. Ochoa",
        lastMessage: "felis eget varius ultrices, mauris ipsum porta elit,",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Mariam Z. Hines",
        lastMessage: "velit. Aliquam nisl. Nulla eu",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Aphrodite A. Ramirez",
        lastMessage: "mattis",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Fredericka Y. Casey",
        lastMessage: "purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Wayne R. Reed",
        lastMessage: "non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Rashad Y. Hunter",
        lastMessage: "et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Wing A. Rivers",
        lastMessage: "tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Baxter I. Thomas",
        lastMessage: "scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Dean U. Vaughn",
        lastMessage: "at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut,",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Kaye Z. Sykes",
        lastMessage: "nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Hop U. Bradley",
        lastMessage: "Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Hedwig E. Lynn",
        lastMessage: "dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Flavia N. Alexander",
        lastMessage: "Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Cally S. Haney",
        lastMessage: "Cum sociis natoque penatibus et magnis dis parturient",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Jocelyn H. Rollins",
        lastMessage: "elit.",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Rae D. Gray",
        lastMessage: "magna. Sed eu eros. Nam consequat",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Dante I. Lewis",
        lastMessage: "non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Aspen R. Rutledge",
        lastMessage: "tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Norman W. Humphrey",
        lastMessage: "metus. Aliquam erat volutpat. Nulla facilisis.",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Eaton X. Edwards",
        lastMessage: "blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Kelsey E. Gross",
        lastMessage: "faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Ignacia W. Pierce",
        lastMessage: "lacinia. Sed congue, elit sed consequat auctor, nunc",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Damian S. Day",
        lastMessage: "Vestibulum ut eros non enim",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Aladdin V. Higgins",
        lastMessage: "penatibus et magnis dis",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Theodore S. Adams",
        lastMessage: "lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Celeste Y. Byrd",
        lastMessage: "ac, feugiat non, lobortis quis,",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Celeste V. Lamb",
        lastMessage: "luctus. Curabitur",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Knox A. Vance",
        lastMessage: "commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Clementine E. Bennett",
        lastMessage: "eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Isaac D. Stein",
        lastMessage: "nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Phillip A. Lamb",
        lastMessage: "lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Talon G. Carter",
        lastMessage: "orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Oliver Y. Wynn",
        lastMessage: "ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Shannon W. Beck",
        lastMessage: "molestie pharetra",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Chase R. Sexton",
        lastMessage: "eget metus",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Yuli P. Hopkins",
        lastMessage: "imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Zane M. Fernandez",
        lastMessage: "orci. Ut",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Carissa C. Franco",
        lastMessage: "risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit.",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Brent V. England",
        lastMessage: "lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Gary T. Lucas",
        lastMessage: "velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Fritz U. Rosario",
        lastMessage: "ut ipsum",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Hamish Z. Mccoy",
        lastMessage: "auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "John Z. Obrien",
        lastMessage: "dolor sit amet, consectetuer",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Ursula Z. Leonard",
        lastMessage: "Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Alden K. Stafford",
        lastMessage: "luctus et ultrices posuere",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Neville N. Wells",
        lastMessage: "mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Justin E. Hendricks",
        lastMessage: "egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Ina X. Bernard",
        lastMessage: "cursus a, enim. Suspendisse aliquet, sem ut",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Benjamin I. Small",
        lastMessage: "arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Amos O. Griffith",
        lastMessage: "adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Rosalyn X. Sweeney",
        lastMessage: "Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Sigourney W. Meadows",
        lastMessage: "Cras sed leo. Cras",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Jonah G. Lang",
        lastMessage: "diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Rhiannon L. Mcdowell",
        lastMessage: "augue,",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Xaviera K. Burke",
        lastMessage: "dictum placerat, augue. Sed molestie.",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Tate L. Knapp",
        lastMessage: "dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Kristen H. Faulkner",
        lastMessage: "Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Benedict S. Hoffman",
        lastMessage: "Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Signe T. Bridges",
        lastMessage: "nisl sem,",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Halla E. Durham",
        lastMessage: "laoreet ipsum. Curabitur",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Aphrodite J. Mullins",
        lastMessage: "nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Hollee P. Dillard",
        lastMessage: "Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Keiko X. Jordan",
        lastMessage: "mollis nec, cursus a, enim. Suspendisse",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Germane Y. Glenn",
        lastMessage: "parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "Clinton S. Cherry",
        lastMessage: "Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis.",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Brock Q. Bernard",
        lastMessage: "et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Xanthus F. Huffman",
        lastMessage: "egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Shelley C. Medina",
        lastMessage: "in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Cassidy Q. Rodgers",
        lastMessage: "gravida mauris ut mi. Duis risus",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Macey B. Buckner",
        lastMessage: "blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Rowan E. Alvarado",
        lastMessage: "purus gravida sagittis. Duis gravida. Praesent eu",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Noah T. Bauer",
        lastMessage: "interdum feugiat.",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Berk C. Walker",
        lastMessage: "Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Diana J. Sargent",
        lastMessage: "mauris ut",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Brenda A. Watts",
        lastMessage: "pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Brady N. Summers",
        lastMessage: "Integer urna. Vivamus molestie dapibus",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Sydney Z. Barlow",
        lastMessage: "porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Galena C. Holloway",
        lastMessage: "ligula elit, pretium et,",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Curran B. Gibson",
        lastMessage: "molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Ignatius J. Kane",
        lastMessage: "velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Amela T. Wilson",
        lastMessage: "nec urna et arcu imperdiet ullamcorper. Duis",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Colton S. Gallegos",
        lastMessage: "augue malesuada malesuada. Integer id magna et ipsum cursus",
        avatar: "avatar-3"
    ),
    MessageInfo(
        userName: "Zenia Z. Hall",
        lastMessage: "interdum ligula eu enim.",
        avatar: "avatar-5"
    ),
    MessageInfo(
        userName: "MacKenzie I. Holmes",
        lastMessage: "penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Cameran C. Noel",
        lastMessage: "Duis dignissim tempor arcu. Vestibulum",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Karly Y. Keller",
        lastMessage: "vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Malik D. Golden",
        lastMessage: "tempor augue ac ipsum. Phasellus vitae mauris",
        avatar: "avatar-2"
    ),
    MessageInfo(
        userName: "Sage H. Sherman",
        lastMessage: "nisl. Maecenas malesuada fringilla est. Mauris",
        avatar: "avatar-6"
    ),
    MessageInfo(
        userName: "Merritt U. Crosby",
        lastMessage: "dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Wing X. Cooper",
        lastMessage: "nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque",
        avatar: "avatar-4"
    ),
    MessageInfo(
        userName: "Kathleen H. Merritt",
        lastMessage: "ac risus. Morbi",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Priscilla A. Finley",
        lastMessage: "arcu. Vestibulum ante ipsum primis in faucibus orci luctus et",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Octavius O. Cherry",
        lastMessage: "at fringilla purus mauris a nunc. In at pede. Cras vulputate",
        avatar: "avatar-1"
    ),
    MessageInfo(
        userName: "Eric W. Nieves",
        lastMessage: "non nisi. Aenean eget metus. In nec",
        avatar: "avatar-1"
)
]

