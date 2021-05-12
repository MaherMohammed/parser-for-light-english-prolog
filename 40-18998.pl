s(s(NP,VP)) --> noun_phrase(NP), verb_phrase(VP).
s(s(NP,VP,C,NP2,VP2)) --> noun_phrase(NP), verb_phrase(VP), conjunctive(C), noun_phrase(NP2), verb_phrase(VP2).




noun_phrase(np(D,N)) --> det(D), noun(N).
noun_phrase(np(D,ADJ,N)) --> det(D), adjective(ADJ), noun(N).
noun_phrase(np(D1,N1,C,D2,N2)) --> det(D1) ,noun(N1), conjunctive(C), det(D2) ,noun(N2).

verb_phrase(vp(V,NP)) --> verb(V), noun_phrase(NP).
verb_phrase(vp(V,ADJ)) --> verb(V), adjective(ADJ).
verb_phrase(vp(V,ADV)) --> verb(V), adverb(ADV).
verb_phrase(vp(V)) --> verb(V).


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
verb(v(belongs)) --> [belongs].
verb(v(climb)) --> [climb].
verb(v(climbed)) --> [climbed].
verb(v(watched)) --> [watch].
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

adjective(adj(young)) --> [young].
adjective(adj(empty)) --> [empty].
adjective(adj(large)) --> [large].
adjective(adj(big)) --> [big].
adjective(adj(old)) --> [old].
adjective(adj(poor)) --> [poor].
adjective(adj(white)) --> [white].
adjective(adj(briliant)) --> [briliant].
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