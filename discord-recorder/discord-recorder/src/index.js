const Discord = require('discord.js')
    const client = new Discord.Client()
    connst token = '572416155923513345'
    client.on('ready', () => {
      console.log(`Logged in as ${client.user.tag}!`)
});
client.on('message', msg => {
      if (msg.content === 'ping') {
        msg.reply('pong')
      }
    });

client.login(token)
