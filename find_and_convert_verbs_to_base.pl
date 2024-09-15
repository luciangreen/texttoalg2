:-include('../listprologinterpreter/la_strings').
:-include('../texttoalg/texttoalg.pl').

find_and_convert_verbs_to_base :-
	find_verbs(Text2a2),
	convert_verbs_to_base(Text2a2,Word12a),
	term_to_atom(Word12a,Word12),
	texttoalg(u,u,Word12,u,true,false,false,false,false,false).
	
find_verbs(Text2a2) :-
phrase_from_file_s(string(Text1), "../Text-to-Breasonings/file.txt"),
%%	phrase_from_file_s(string(Text1), "file.txt"),


phrase_from_file_s(string(BrDict0), "../Text-to-Breasonings/brdict1.txt"),
%%	phrase_from_file_s(string(BrDict0), "brdict1.txt"),
	splitfurther(BrDict0,BrDict01),
	sort(BrDict01,BrDict012),

	%SepandPad="&#@~%`$?-+*^,()|.:;=_/[]<>{}\n\r\s\t\\\"!'0123456789",
	split_string_on_non_alpha(Text1,Text2a),
	
	delete(Text2a,"",Text222),
findall(Text2a1,(member(Text2a1,Text222),member([Text2a1,"right"],BrDict012)),Text2a2).

convert_verbs_to_base(Text1,Word12) :-
	read_term1("../texttoalg2/prefixes.txt",Prefixes),
	read_term1("../texttoalg2/suffixes.txt",Suffixes),
	findall(Word1,(member(Word,Text1),once((member(Prefix,Prefixes),string_concat(Prefix,Word1,Word))->true;Word1=Word)),Word11),
	findall(Word_a1,(member(Word_a,Word11),once((member(Suffix,Suffixes),string_concat(Word_a1,Suffix,Word_a))->true;Word_a1=Word_a)),Word12).

read_term1(File,Prefixes3) :-
	phrase_from_file_s(string(Prefixes1),File),
	string_codes(Prefixes2,Prefixes1),
	term_to_atom(Prefixes3,Prefixes2).