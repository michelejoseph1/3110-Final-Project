let in_game = false (* used to toggle between parsing from main_menu and command *)

open Terminal_chess
open Display

let rec request_command s= 
  print_string "Please enter a move.\n";
  try match Command.parse(read_line()) with
  | x -> print_endline x (* here is where the new board is returned and where you reprint *)
  with 
  | Command.InvalidInput -> print_endline "Invalid Command, please try again.\n"
  | Command.Quit -> print_endline "\nGoodbye \n"; exit 0
  | Command.EmptyCommand -> print_endline "No command found, please try again.\n"
  | Command.InvalidQuit -> print_endline "Incorrect command. Did you mean <quit>?\n";
  request_command s

let () = print_board start_board;
request_command ""
