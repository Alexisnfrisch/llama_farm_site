require 'open-uri'
require 'yaml'



def destroy_all
    User.destroy_all
    FileUtils.rm_rf(Dir['app/assets/images/autopics/*'])
    p 'everything is gone'
end


def create_self
    User.create!(name: 'Default User', username: 'default', bio: "It's me!", email: "user@default.com", password: '111111')
end


def fill_queen_array(number)
    queen_array = []

    until queen_array.count == number
        queen = Faker::TvShows::RuPaul.queen
        queen_array.push(queen) unless queen_array.include?(queen)
    end    
    queen_array
end


def create_queens(queen_array)

    queen_array.each do |queen|

        p "Creating #{queen}"

        pic = scrape_image(queen)
        name = queen
        username = queen.delete(' ')
        
        User.create!(
            name: name, 
            username: username, 
            bio: Faker::TvShows::RuPaul.quote, 
            email: "#{username}@rpdr.com", 
            password: "111111", 
            autopic: "autopics/#{username}.png", 
            bot: :true
        )

    end
    p "finished!"
end

def scrape_image(queen)
    search_string = queen.gsub(/ /, '+')
    
    img = Nokogiri::HTML(open("https://www.google.com/search?tbm=isch&q=#{search_string}"))
        .css('img').attr('src')
        .value

    filename = queen.delete(' ')
    File.open("app/assets/images/autopics/#{filename}.png",'wb'){ |f| f.write(open(img).read) }
end

destroy_all

create_self

queen_array = fill_queen_array(10)

create_queens(queen_array)
