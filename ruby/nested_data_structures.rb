hallway = {
    locker_1: {
        student_name: "Bethany's Locker",
        locker_setup: {
            number_of_shelves: 2,
            number_of_hooks: 1
        },
        content: [
            "mirror", 
            "math book",
            "notebook"
        ]
    },
    locker_2: {
        student_name: "Adam's Locker",
        locker_setup: {
            number_of_shelves: 1,
            number_of_hooks: 2
        },
        content: []
    },
    locker_3: {
        student_name: "Mary's Locker",
        locker_setup: {
            number_of_shelves: 3,
            number_of_hooks: 0
        },
        content: [
          "lip gloss",
          "lunch box",
          "spanish textbook"
          ]
    }
}

hallway[:locker_1][:student_name]

hallway[:locker_2][:locker_setup][:number_of_shelves]

hallway[:locker_3][:content]

hallway[:locker_1][:content][2]

hallway[:locker_2][:content]