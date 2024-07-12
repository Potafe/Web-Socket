export type UserId = string

const globalChatId = 0

export interface Chat {
    id: string
    userId: string
    name: string
    message: string
    upvotes: UserId[]
}

export abstract class Store {
    constructor() {

    }

    initRoom(roomId: string) {

    }

    getChats(room: string, limit: number, offset: number) {

    }

    addChat(userId: UserId, name: string, room: string, message: string) {

    }

    upvote(userId: UserId, room: string, chatId: string) {

    }
}