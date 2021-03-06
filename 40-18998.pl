s(sentence(NP)) --> noun_phrase(NP).

s(sentence(NP,VP)) --> noun_phrase(NP), verb_phrase(VP).

% s(sentence(NP,VP,SEN)) --> noun_phrase(NP), verb_phrase(VP), s(SEN).
s(sentence(VP)) --> verb_phrase(VP).


s(sentence(Q)) --> question_phrase(Q).
s(sentence(Q,C,SEN)) --> question_phrase(Q), conjunctive(C), s(SEN).
% s(sentence(NP,VP,C,SEN)) --> noun_phrase(NP), verb_phrase(VP), conjunctive(C), s(SEN).
s(sentence(ADV,SEN)) --> adverb_phrase(ADV), s(SEN).
% s(sentence(Q,SEN)) --> question_phrase(Q), s(SEN).


% s(sentence(SEN,Q)) --> s(SEN) , question_phrase(Q).
% s(sentence(Q,SEN)) --> question_phrase(Q), s(SEN).


noun_phrase(np(N)) --> noun(N).
noun_phrase(np(ADJ,N)) --> adjective_phrase(ADJ), noun(N).
noun_phrase(np(D,N)) --> det(D), noun(N).
noun_phrase(np(D,AP,N)) --> det(D), adjective_phrase(AP), noun(N).
noun_phrase(np(D,N,C,NP)) --> det(D), noun(N), conjunctive(C), noun_phrase(NP).
noun_phrase(np(D,AP,N,C,NP)) --> det(D), adjective_phrase(AP), noun(N), conjunctive(C), noun_phrase(NP).
noun_phrase(np(AP,N,C,NP)) --> adjective_phrase(AP), noun(N), conjunctive(C), noun_phrase(NP).
noun_phrase(np(N,NP)) --> noun(N), noun_phrase(NP).
noun_phrase(np(D,N,NP)) --> det(D), noun(N), noun_phrase(NP).
noun_phrase(np(D,N,AP,NP)) --> det(D), adjective_phrase(AP), noun(N), noun_phrase(NP).

verb_phrase(vp(V)) --> verb(V).
verb_phrase(vp(V,ADJ)) --> verb(V), adjective_phrase(ADJ).
verb_phrase(vp(V,PP)) --> verb(V), preposition_phrase(PP).
verb_phrase(vp(AP)) --> adverb_phrase(AP).
verb_phrase(vp(AP,PP)) --> adverb_phrase(AP), preposition_phrase(PP).
verb_phrase(vp(V,NP)) --> verb(V), noun_phrase(NP).
verb_phrase(vp(AP,NP)) --> adverb_phrase(AP), noun_phrase(NP).
verb_phrase(vp(V,NP,NP2)) --> verb(V), noun_phrase(NP), noun_phrase(NP2).
verb_phrase(vp(AP,NP,NP2)) --> adverb_phrase(AP), noun_phrase(NP), noun_phrase(NP2).
verb_phrase(vp(V,NP,PP)) --> verb(V), noun_phrase(NP), preposition_phrase(PP).
verb_phrase(vp(AP,NP,PP)) --> adverb_phrase(AP), noun_phrase(NP), preposition_phrase(PP).
verb_phrase(vp(V,C,VP)) --> verb(V), conjunctive(C), verb_phrase(VP).
verb_phrase(vp(AP,C,VP)) --> adverb_phrase(AP), conjunctive(C), verb_phrase(VP).


adjective_phrase(ap(A)) --> adjective(A).
adjective_phrase(ap(A,AP)) --> adjective(A), adjective_phrase(AP).
adjective_phrase(ap(A,C,AP)) --> adjective(A), conjunctive(C),adjective_phrase(AP).


preposition_phrase(pp(P,NP)) --> preposition(P), noun_phrase(NP).
preposition_phrase(pp(P,NP,PP)) --> preposition(P), noun_phrase(NP), preposition_phrase(PP).
preposition_phrase(pp(P,NP,C,PP)) --> preposition(P), noun_phrase(NP), conjunctive(C), preposition_phrase(PP).


adverb_phrase(advp(ADV,V)) --> adverb(ADV), verb(V).
adverb_phrase(advp(V,ADV)) --> verb(V), adverb(ADV).
adverb_phrase(advp(ADV,ADVP)) --> adverb(ADV), adverb_phrase(ADVP).
adverb_phrase(advp(ADV,C,ADVP)) --> adverb(ADV), conjunctive(C), adverb_phrase(ADVP).


question_phrase(qp(I,V,NP,VP)) --> interrogative(I), verb(V), noun_phrase(NP), verb_phrase(VP).
question_phrase(qp(I,VP)) --> interrogative(I), verb_phrase(VP).


det(d(the)) --> [the].
det(d(a)) --> [a].
det(d(some)) --> [some].
det(d(many)) --> [many].
det(d(every)) --> [every].

noun(n(boy)) --> [boy].
noun(n(box)) --> [box].
noun(n(room)) --> [room].
noun(n(school)) --> [school].
noun(n(woman)) --> [woman].
noun(n(man)) --> [man].
noun(n(envelope)) --> [envelope].
noun(n(shed)) --> [shed].
noun(n(building)) --> [building].
noun(n(tree)) --> [tree].
noun(n(girl)) --> [girl].
noun(n(students)) --> [students].
noun(n(professors)) --> [professors].
noun(n(lecturers)) --> [lecturers].
noun(n(scientists)) --> [scientists].
noun(n(scientist)) --> [scientist].
noun(n(researchers)) --> [researchers].
noun(n(father)) --> [father].
noun(n(mother)) --> [mother].
noun(n(cat)) --> [cat].
noun(n(fish)) --> [fish].



verb(v(eats)) --> [eats].
verb(v(push)) --> [push].
verb(v(pushed)) --> [pushed].
verb(v(store)) --> [store].
verb(v(stored)) --> [stored].
verb(v(give)) --> [give].
verb(v(gave)) --> [gave].
verb(v(belongs)) --> [belongs].
verb(v(climb)) --> [climb].
verb(v(climbed)) --> [climbed].
verb(v(watched)) --> [watched].
verb(v(do)) --> [do].
verb(v(did)) --> [did].
verb(v(admire)) --> [admire].
verb(v(admired)) --> [admired].
verb(v(run)) --> [run].
verb(v(ran)) --> [ran].
verb(v(speak)) --> [speak].
verb(v(tells)) --> [tells].
verb(v(walks)) --> [walks].
verb(v(smells)) --> [smells].
verb(v(gets)) --> [gets].
verb(v(plays)) --> [plays].
verb(v(is)) --> [is].
verb(v(was)) --> [was].
verb(v(are)) --> [are].
verb(v(appreciated)) --> [appreciated].




adjective(adj(young)) --> [young].
adjective(adj(empty)) --> [empty].
adjective(adj(large)) --> [large].
adjective(adj(big)) --> [big].
adjective(adj(old)) --> [old].
adjective(adj(poor)) --> [poor].
adjective(adj(white)) --> [white].
adjective(adj(brilliant)) --> [brilliant].
adjective(adj(talented)) --> [talented].
adjective(adj(bright)) --> [bright].
adjective(adj(beautiful)) --> [beautiful].
adjective(adj(small)) --> [small].
adjective(adj(good)) --> [good].
adjective(adj(handsome)) --> [handsome].
adjective(adj(high)) --> [high].
adjective(adj(gorgeous)) --> [gorgeous].
adjective(adj(bad)) --> [bad].
adjective(adj(busy)) --> [busy].
adjective(adj(calm)) --> [calm].
adjective(adj(afraid)) --> [afraid].


adverb(adv(quickly)) --> [quickly].
adverb(adv(early)) --> [early].
adverb(adv(here)) --> [here].
adverb(adv(first)) --> [first].
adverb(adv(last)) --> [last].
adverb(adv(too)) --> [too].
adverb(adv(very)) --> [very].
adverb(adv(simply)) --> [simply].
adverb(adv(literally)) --> [literally].
adverb(adv(really)) --> [really].
adverb(adv(absolutely)) --> [absolutely].
adverb(adv(enough)) --> [enough].
adverb(adv(now)) --> [now].
adverb(adv(quite)) --> [quite].
adverb(adv(today)) --> [today].
adverb(adv(outside)) --> [outside].
adverb(adv(there)) --> [there].
adverb(adv(cheerfully)) --> [cheerfully].
adverb(adv(somewhere)) --> [somewhere].
adverb(adv(totally)) --> [totally].

preposition(pre(after)) --> [after].
preposition(pre(in)) --> [in].
preposition(pre(behind)) --> [behind].
preposition(pre(on)) --> [on].
preposition(pre(under)) --> [under].
preposition(pre(over)) --> [over].
preposition(pre(at)) --> [at].
preposition(pre(to)) --> [to].
preposition(pre(by)) --> [by].
preposition(pre(from)) --> [from].

interrogative(intr(who)) --> [who].
interrogative(intr(what)) --> [what].


conjunctive(conj(and)) --> [and].