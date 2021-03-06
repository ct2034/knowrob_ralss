
%%%
% Expose some rules for querying.
:- module(prolog_basics,
    [
      perishable/1,
      storagePlace/2,
      searchForIn/2
    ]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Prolog facts
% Facts are used to state things that are unconditionally true of some situation of interest.
% For example, we can state that Mia, Jody, and Yolanda are women, and
% that Jody plays air guitar, using the following four facts:
%   woman(mia).
%   woman(jody).
%   woman(yolanda).
%   playsAirGuitar(jody). 
%
refrigerator(fridge4).
cup(cup0).

diary(milk1).
cupboard(cupboard3).

meat(ham2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% Rules
% Rules state information that is conditionally true of the situation of interest.
%
% The part on the left hand side of the :- is called the head of the rule,
% the part on the right hand side is called the body.
% So in general rules say: if the body of the rule is true,
% then the head of the rule is true too.
% 
% If a knowledge base contains a rule head  :-  body, and Prolog knows that body
% follows from the information in the knowledge base, then Prolog can infer head.
% This fundamental deduction step is called modus ponens. 
%


%%%
% Dairy products and meat products are perishable
perishable(Item) :- meat(Item) ; diary(Item) .

%%%
% Clause 1: Perishable items are stored in refrigerators,
% Clause 2: Cups are stored in cupboards.
storagePlace(Item,Location) :- fail.
storagePlace(Item,Location) :- fail.

%%%
% Search for items at their storage place.
searchForIn(Item,Location) :- fail.

