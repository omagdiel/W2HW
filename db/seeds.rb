10.times do |posts|
  Post.create!(
    title: "My Great Post #{posts}",
    subtitle: "At vero eos et",
    body: "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    image: "http://2.bp.blogspot.com/-SaGX1zvgpTA/UZam_sLGH8I/AAAAAAAABCg/bb-dXRSrDHY/s1600/cleetus.png"
  )
end
