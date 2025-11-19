% ==============================================================================
% Checkers AI - Demo Script
% ==============================================================================
% This file demonstrates how to use the Checkers AI.
% Load this file after loading src/checkers.pl
%
% Usage:
%   ?- ['src/checkers.pl'].
%   ?- ['examples/demo.pl'].
%   ?- demo_evaluate.
%   ?- demo_count_pieces.
% ==============================================================================

% Demo 1: Evaluate the initial board
demo_evaluate :-
    writeln('=== Demo: Evaluate Initial Board ==='),
    initial_board(Board),
    evaluate(Board, Score),
    format('Initial board score: ~w~n', [Score]),
    writeln('(Score of 0 means balanced position)'),
    nl.

% Demo 2: Count pieces on the board
demo_count_pieces :-
    writeln('=== Demo: Count Pieces ==='),
    initial_board(Board),
    count_pieces(Board, b, BlackCount),
    count_pieces(Board, w, WhiteCount),
    count_pieces(Board, bk, BlackKingCount),
    count_pieces(Board, wk, WhiteKingCount),
    format('Black pieces: ~w~n', [BlackCount]),
    format('White pieces: ~w~n', [WhiteCount]),
    format('Black kings: ~w~n', [BlackKingCount]),
    format('White kings: ~w~n', [WhiteKingCount]),
    nl.

% Demo 3: Display the board in a readable format
demo_display_board :-
    writeln('=== Demo: Display Board ==='),
    initial_board(Board),
    display_board(Board),
    nl.

% Helper: Display board in 8x8 grid format
display_board(Board) :-
    display_rows(Board, 0).

display_rows([], _).
display_rows(Board, Row) :-
    Row < 8,
    Start is Row * 8,
    End is Start + 8,
    slice(Board, Start, End, RowPieces),
    format('Row ~w: ~w~n', [Row, RowPieces]),
    NextRow is Row + 1,
    display_rows(Board, NextRow).

% Helper: Extract a slice from a list
slice(List, Start, End, Slice) :-
    length(Prefix, Start),
    append(Prefix, Rest, List),
    Length is End - Start,
    length(Slice, Length),
    append(Slice, _, Rest).

% Demo 4: Run all demos
run_all_demos :-
    demo_evaluate,
    demo_count_pieces,
    demo_display_board,
    writeln('=== All Demos Complete ===').

% Print usage instructions
demo_help :-
    writeln('=== Checkers AI Demo Commands ==='),
    writeln('1. demo_evaluate         - Show board evaluation'),
    writeln('2. demo_count_pieces     - Count pieces on board'),
    writeln('3. demo_display_board    - Display board in grid format'),
    writeln('4. run_all_demos         - Run all demos'),
    writeln('5. demo_help             - Show this help'),
    nl.

% Auto-display help when loaded
:- initialization(demo_help).
