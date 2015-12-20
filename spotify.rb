require 'rspotify'

def lookup_artist(artist)
  artists = RSpotify::Artist.search(artist)

  puts '                 '
  puts 'Found result for ' + artist
  puts 'Top Tracks:'
  puts '==========='
  artists.first.top_tracks(:US).each { 
    |track| puts track.name 
  }
  main_menu()
end

def lookup_song(song)
    songs = RSpotify::Track.search(song)

    puts '                 '
    puts 'Found result for ' + song
    puts 'Tracks:'
    puts '==========='
    songs.each { |track| puts track.name }
    main_menu()
end

def lookup_album(album)
    albums = RSpotify::Album.search(album)

    puts '                 '
    puts 'Found result for ' + album
    puts 'Albums:'
    puts '==========='
    albums.each { |album| puts album.name }
    main_menu()  
end

def lookup_playlist(playlist)
    playlists = RSpotify::Playlist.search(playlist)

    puts '                 '
    puts 'Found result for ' + playlist
    puts 'Playlists:'
    puts '==========='
    playlists.each { |playlist| puts playlist.name }
    main_menu() 
end

def authenticate() 
    RSpotify::authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])
end

def invalid()
    puts 'That \'s not a valid selection. Please select again'
    main_menu() 
end

def main_menu
    puts "                           "
    puts "                           "
    puts "Welcome to Spotify search!"
    puts "==========================="
    puts "                           "
    puts "What would you like to do?"
    puts "1. Search artists"
    puts "2. Search songs"
    puts "3. Search albums"
    puts "4. Search playlists"
    puts "5. Authenticate"
    puts "6. Exit"

    main_selection = gets.chomp

    case
    when main_selection == '1'
        puts 'Ok, what artist?'
        artist = gets.chomp
        lookup_artist(artist)
    when main_selection == '2'
        puts 'Ok, what song?'
        song = gets.chomp
        lookup_song(song)
    when main_selection == '3'
        puts 'Ok, what album?'
        album = gets.chomp
        lookup_album(album)
    when main_selection === '4'
        puts 'Ok, name of the playlist?'
        playlist = gets.chomp
        lookup_playlist(playlist)
    when main_selection == '5'
        authenticate()
    when main_selection == '6'
        exit()
    else
        invalid()
    end
end

main_menu()