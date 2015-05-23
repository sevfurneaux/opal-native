require "opal"
require "react"
require "react/native"


class App
  include React::NativeComponent

  before_mount do
    puts "Hello!"
  end

  def render
    styles = React::StyleSheet.new({
      container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
      },
      welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
      },
      instructions: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
      },
    })

    present(View, {style: styles.container}) do
       present(Text, {style: styles.welcome}) { "Welcome to React Native!💖" }
       present(Text, {style: styles.instructions}) { "To get started, edit app/application.rb" }
       present(Text, {style: styles.instructions}) do
         "Press Cmd+R to reload,\nCmd+Control+Z for dev menu"
       end
       present(Image, {source: 'https://media4.giphy.com/media/ODy29v7YAJrck/200_s.gif'})
    end
  end
end

React::AppRegistry.register_component(App)
