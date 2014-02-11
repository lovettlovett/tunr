# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Alicia Keys", genre: "R&B", photo_url: "http://www.wzip88.com/wp-content/uploads/2012/12/alicia-keys-.jpg")
Artist.create(name: "Johnny Cash", genre: "country", photo_url: "http://factmag-images.s3.amazonaws.com/wp-content/uploads/2013/12/johnny-cash-1210.jpg")
Artist.create(name: "Ingrid Michaelson", genre: "alternative pop", photo_url: "http://www.mtv.com/crop-images/2013/09/04/ingrid-michaelson-shervin-lainez-2010-rgb.jpg")

#here we could just put artist like this
#artist: Alicia Keys
Song.create(title: "Girl on Fire", year: "2012", artist_id: "1")
Song.create(title: "Jackson", year: "1970", artist_id: "2")
Song.create(title: "You & I", year: "2009", artist_id: "3")

