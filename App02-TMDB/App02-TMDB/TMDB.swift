//
//  TMDB.swift
//  App02-TMDB
//
//  Created by Created by Alumno on 21/08/23.
//

import Foundation

let apiauth = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlYzUxMWUxOTQwNmI0MDNjZmNkMmNhZjUwNTM3ODMwYiIsInN1YiI6IjViZjM1YjEyMGUwYTI2MjY1YzA5MjcyZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.BFDSYObw7NAI3JqKeaWgxXRc_MDlQw_7tT4dOGiHxas"

let headers = [ "Authorization": "Bearer \(apiauth)", "Accept": "application/json", "Content-Type": "application/json" ]
let tmdbURL = "https://api.themoviedb.org/3/"
let imageURL = "https://image.tmdb.org/t/p/original"
let youtubeURL = "https://youtu.be/"
