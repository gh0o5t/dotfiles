function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color --bold red
      echo '(N) '
    case insert
      set_color --bold yellow
      echo ''
    case replace_one
      set_color --bold brmagenta
      echo '(R)  '
    case visual
      set_color --bold cyan
      echo '(V) '
    case '*'
      set_color --bold black
      echo '(U) '
  end
  set_color normal
end
