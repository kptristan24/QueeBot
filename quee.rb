require 'discordrb'

bot = Discordrb::Bot.new token: 'MTk4NjY1NjkwNjMzMjA3ODA4.CljdVw.vc3Uia3bCxdP1UtQiCo9x4PuSvQ', client_id: 198665319659601922


bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.message(with_text: '!OWKorean') do |event|
  event.respond 'Bbong = Ana Ult | Gaepi = Low HP | BanPi = Half HP | Naisu = Nice | Goong = Ultimate | Bangbyuk = Shield | Dae bak = Amazing | Line = Rein | Sugoyo = Good work'
end

bot.mention do |event|
  event.user.pm('I am your new god')
end

bot.message(with_text: '!deetz') do |event|
  event.respond(bot.server((192481924655087616)))
  server = bot.server((192481924655087616))
  members = server.online_members

  members.each do |name|
    puts name.display_name
  end
end

bot.run

