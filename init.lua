-- simple pm

minetest.register_chatcommand("pm", {
    params = "<nick> <message>",
    description = "private messages",

    func = function(name, param)
        local nick, message = param:match("^(%S+)%s(.+)$")
        minetest.chat_send_player(nick, "You have new message from '".. name.. "'\n" .. message)
        return false, "Sent"
    end,
})