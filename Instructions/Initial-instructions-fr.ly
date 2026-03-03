\version "2.24.4"
\language "english"

% See https://lilypond.org/doc/v2.25/Documentation/snippets/text-_002d-markup-list
% Defines the \paragraph macro to indent first line of paragraphs
#(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

\markup \caps \bold \fill-line { \center-column { "Étendue du cornet à pistons et du saxhorn" } }

\markuplist {
  \paragraph {
  Ainsi que l’indique la tablature, les instruments à trois pistons descendants ont une étendue de deux
  octaves 1/2, qui, pour le cornet aussi bien que pour le saxhorn, va du \italic fa dièse au-dessous des
  lignes, jusqu’au contre \italic ut au-dessus des lignes. Mais il n’est pas donné à tout le monde de 
  parcourir avec facilité cette étendue toute entière.
  }
  \vspace #.3
  \paragraph {
  Il faut donc, quand on écrit pour ces instruments, fût-ce même un solo, ne pas atteindre aux dernières
  aux dernières limites de l’échelle indiquée sur la tablature. Généralement MM. les chefs de musique 
  font monter les instruments dans des régions trop élevées. Il en résulte que l’artiste perd la belle
  qualité de son de l’instrument et qu’il finit par manquer les choses les plus simples, même quand il
  joue dans le médium. Pour obvier à cet inconvénient, il convient de travailler avec constance
  l’instrument dans toute son étendue et de s’appesantir plus particulièrement sur le chapitre consacré
  à l’étude des divers intervalles.
  }
  \vspace #.3
  \paragraph {
  L’étendue la plus facile à parcourir commence à l’\italic ut grave pour continuer jusqu’au \italic sol
  au-dessus des lignes. On peut assez facilement monter jusqu’au \italic si bémol, mais le \italic si 
  naturel et l’\italic ut ne doivent s’employer que très-rarement.
  }
  \vspace #.3
  \paragraph{ 
  Quant aux notes qui existent au-dessous de l’\italic ut, c’est-à-dire
  
  % Comments regarding score snippets:
  % - there is an unnecessary space between the key and the time signature that should be "deleted"
  % - the default staff size is too big. 14 seems to be good
  % - \raise #0.5 helps centering the text around the staff
  % - indent is removed
  % - When displaying subscript markup (for tongue pronunciation), options are needed to have them
  %   all aligned

  \raise #0.5 \score {
    \layout {
      indent = 0
      #(layout-set-staff-size 14)
    }
    \relative { 
      \time 6/8 c'8 b bf a gs g fs4. r4. \fine
    }
  }
  
  elles n’offrent pas de grandes difficultés, bien que certains artistes éprouvent parfois beaucoup de
  peine à les faire sortir avec plénitude ; ces notes sont cependant fort belles quand on les possède
  bien.
  }
}

\markup \caps \bold \fill-line { \center-column { "Cornet à pistons en ut" } }

\markuplist {
  \paragraph {
    Il est indispensable de jouer le cornet à pistons en \italic ut et en \italic si naturel aussi bien
    que le cornet en \italic si bémol, car ils peuvent rendre de très-grands services dans les
    orchestres, surtout quand on est appelé à jouer des parties de trompettes. Comme instrument solo,
    le cornet en \italic ut est des plus brillants et possède même un timbre plus distingué que celui 
    en \italic si bémol. Dans les théatres consacrésaux représentations lyriques, on ne saurait s’en
    passer, à cause des transpositions qui y deviennent beaucoup plus faciles que sur le cornet à
    pistons en \italic si bémol, et surtout en raison de la sûreté avec laquelle on peut atteindre les
    sons les plus aigus.
  }
  \vspace #.3
  \paragraph {
    Si l’orchestre joue en \italic si naturel ou en \italic mi majeur, il convient de jouer avec le
    cornet en \italic si naturel. Si l’orchestre joue en \italic ut  ou en \italic fa, alors prenez le
    cornet en \italic ut. Quant au cornet en \italic la, il correspond assez mal aux tons que je viens
    d’indiquer pour l’orchestre, et son emploi ne ferait, en général, que créer des difficultés.
  }
}

\markup \caps \bold \fill-line { \center-column { "Deuxième tablature" } }

\markuplist {
  \paragraph {
    Il existe un moyen d’obtenir le \italic fa naturel au-dessous des lignes, et en même temps de
    faciliter l’exécution de certains passages impraticables avec les doigtés indiqués sur la première
    tablature. Il faut, pour cela, tirer d’un demi-ton la coulisse du troisième piston, de manière à
    réaliser une longueur de deux tons, au lieu d’un ton et demi qu’elle possède habituellement. On se
    servira alors du doigté suivant qui, d’ailleurs, est fort usité en Allemagne.
  }
  \vspace #.3
}
  
\markup \fill-line {
  \center-column {
      \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' { 
        r4 c^\finger 0 b!^\finger 2 bf^\finger 1
        a^\finger 2^\finger 1 af^\finger 3 g^\finger 0 fs^\finger 2
        f!^\finger 1 e^\finger 2^\finger 1 ef^\finger 3 d^\finger 3^\finger 2
        df^\finger 3^\finger 1 c^\finger 0 b!^\finger 2 bf^\finger 1
        a^\finger 2^\finger 1 af^\finger 3 g^\finger 3^\finger 2 fs^\finger 3^\finger 1
        f!1^\finger 3^\finger 2^\finger 1
        \fine
      }
    }
  }
}

\markuplist {  
  \paragraph {
    Il faut, pour que le \italic fa naturel soit tout à fait juste, tirer en même temps un peu la
    coulisse d’accord, ainsi que j’indiquerai dans le prochain chapitre.
  }
  \vspace #.3
  \paragraph {
    Exemple de trilles impraticables avec le doigté ordinaire, et que l’on peut obtenir facilement en
    employant le doigté de la deuxième tablature :
  }
}
  
\markup \fill-line {
  \center-column {
      \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \key af \major
         g8^\finger 3^\finger 2( af^\finger 3 g^\finger 3^\finger 2) af^\finger 3 g2(^\trill \grace { \bar "" f16^\finger 3^\finger 2^\finger 1 g^\finger 3^\finger 2 \bar "|" } | af2^\finger 3) r |
        g'8_\finger 2_\finger 3( af_\finger 3 g_\finger 2_\finger 3) af_\finger 3 g2(^\trill \grace { \bar "" f16_\finger 1_\finger 2_\finger 3 g_\finger 2_\finger 3 \bar "|" } | af2_\finger 3) r |
        \section
        \clef treble
        \key ef \major
        d,8^\finger 3^\finger 2( ef^\finger 3 d^\finger 3^\finger 2 ef^\finger 3 d2^\trill \grace { \bar "" c16^\finger 3^\finger 2^\finger 1 d^\finger 3^\finger 2 \bar "|" } | ef2) r |
        d'8_\finger 2_\finger 3( ef_\finger 3 d_\finger 2_\finger 3 ef_\finger 3 d2^\trill \grace { \bar "" c16_\finger 0 d_\finger2_\finger3 \bar "|" } | ef2_\finger3) r |
        \fine
      }
    }
  }
}

\markuplist {
  \paragraph {
    Exemples de quelques traits dans lesquels on peut éviter les fourches en employant ce même doigté :
  }
}
  
\markup \fill-line {
  \center-column {
      \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c {
        \key g \major
        \time 6/8
        g'8^\finger3^\finger2 b^\finger2 d^\finger3^\finger2 g^\finger0 d^\finger3^\finger2 b^\finger2 |
        g^\finger3^\finger2 b^\finger2 d^\finger3^\finger2 g^\finger0 d^\finger3^\finger2 b^\finger2 |
        g4^\finger3^\finger2 r8 r4. |
        \section
        \clef treble
        \key d \major
        \time 2/4
        d'16_\finger2_\finger3 fs_\finger2 a_\finger1_\finger2 fs_\finger2 d_\finger2_\finger3 fs_\finger2 a_\finger1_\finger2 fs_\finger2 |
           d_\finger2_\finger3 fs_\finger2 a_\finger1_\finger2 fs_\finger2 d_\finger2_\finger3 fs_\finger2 a_\finger1_\finger2 fs_\finger2 | 
        d4_\finger2_\finger3 r |
        \fine
      }
    }
  }
}

\markuplist {
  \paragraph {
    On ne doit recourir à ces procédés que dans des cas exceptionnels; je ne les donne ici que pour
    faire bien connaître toutes les ressources de l'instrument.
  }
}

\markup \caps \bold \fill-line { \center-column { "Emploi de la coulisse d’accord" } }

\markuplist {
  \paragraph {
    Un cornet à pistons bien fabriqué doit être monté de manière à ce que le pouce de la main gauche
    puisse entrer dans l’anneau de la coulisse d’accord, afin de pouvoir l’ouvrir et la fermer à
    volonté sans le secours de la main droite. On peut ainsi s’accorder en jouant; personne 
    n’ignore que lorsqu’on commence à jouer, l’instrument, étant froid, se trouve un peu trop bas. Ce
    n’est qu’après l’exécution de quelques mesures que l’instrument monte en s’échauffant, et cela
    dans des proportions extraordinaires.
  }
  \paragraph {
    La coulisse d’accord doit servir aussi à compenser les notes qui, par leur nature, sont trop
    hautes. Chaque piston étant accordé pour être employé séparément, quand on en additionne plusieurs,
    les coulisses deviennent forcément trop courtes, et la justesse se trouve altérée. En voici un
    exemple : Supposez que sur le cornet à piston en \italic si bémol vous mettiez un corps de
    rechange, et que ce soit le ton de \italic sol, l’instrument se trouve alors baissé d’un ton et
    demi. Pour jouer juste avec ce nouveau ton, il faut nécessairement tirer beaucoup la coulisse de
    chaque piston.
  }
  \paragraph {
    Un effet analogue se produit toutes les fois que sur un instrument quelconque vous employez le
    troisième piston. Ainsi, lorsque sur un cornet en \italic si bémol vous abaissez le troisième
    piston, vous le baissez d’un ton et demi; c’est exactement comme si vous aviez mis votre instrument
    en \italic sol, puisque les coulisses de chaque piston produisent l’effet de tons ajoutés à
    l’instrument.
  }
  \paragraph {
    Il faudrait donc, dans ce cas, tirer les coulisses du premier et du deuxième piston, pour s’en
    servir collectivement avec le troisième; mais comme cette opération est impraticable, il devient
    nécessaire d’y suppléer par l’artifice indiqué ci-dessous, c’est-à-dire de compenser le manque
    de longueur des tubes, en tirant la coulisse d’accord avec le pouce de la main gauche; sans cette
    précaution, toutes les notes ci-après seraient trop hautes.
  }
}

\markup \fill-line {
  \center-column {
      \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \time 2/4
        d2 fs, d' g, ef' af, af' df, ef af, df gf,
        \fine
      }
    }
  }
}

\markuplist {  
  \paragraph {
    Il n’est pas difficile de descendre ces notes au moyen des lèvres, mais c’est au prix de la
    qualité du son. Il vaut donc mieux, dans les mouvements lents, pour conserver au son tout son
    éclat, se servir de la coulisse d’accord comme compensateur.
  }
}

\markup \caps \bold \fill-line { \center-column { "Position de l’embouchure sur les lèvres" } }

\markuplist {
  \paragraph {
    L’embouchure doit se poser au milieu de la bouche, deux tiers sur la lèvre inférieure et un tiers
    sur la lèvre supérieure, c’est du moins la position que j’ai adoptée pour moi-même, et que je crois
    la meilleure.
  }
  
  \paragraph {
    Les cornistes posent généralement l’embouchure deux tiers sur la lèvre supérieure et un tiers sur
    la lèvre inférieure, ce qui est justement le contraire de ce que je viens d’indiquer pour le cornet;
    mais il ne faut pas oublier qu’il y a de grandes différences dans la conformation de l’instrument
    comme dans la manière de le tenir; et ce qui peut très bien convenir au cor est d’un mauvais effet
    avec le cornet. Ainsi, que doit-on désirer dans la position du cornet à piston? qu’il soit bien
    horizontal; eh bien, si on plaçait l’embouchure comme on a coutume de le faire pour le cor,
    l’instrument aurait une tendance à tomber, coomme si on jouait de la clarinette.
  }
  
  \paragraph {
    Il y a des professeurs qui ont pour habitude de changer la position d’embouchure de tous les élèves
    qui s’adressent à eux. J’ai rarement vu ce système réussir; à ma connaissance, plusieurs artistes,
    possédant déjà un talent remarquable, ont essayé ce que nous appelons au Conservatoire le système
    orthopédique, lequel consiste à redresser les embouchures mal placées. Je dois dire que ces mêmes 
    artistes, après avoir perdu plusieurs années à travailler inutilement d’après ce système, furent
    obligés d’en revenir à placer leur embouchure dans la position primitive, car aucun n’avait obtenu
    de bons résultats, quelques-uns même ne pouvaient plus jouer du tout.
  }
  
  \paragraph {
    J’en conclus de ceci que, lorsqu’un artiste a mal commencé, il doit seulement chercher à se
    perfectionner, mais non à changer son embouchure de place, surtout s’il est déjà d’une certaine
    force, attendu qu’il ne manque pas de virtuoses qui jouent parfaitement et qui ont même un
    très-beau son, tout en posant leur embouchure sur le côté, et même dans les coins de la bouche.
    Tout ce que l’on peut faire, c’est de se mettre en garde contre ce défaut. En somme, et pour me
    résumer, il n’y a aucune règle absolue pour la pose de l’embouchure, car touto dépend de la
    conformation de la bouche et de la régularité des dents.
  }
  
  \paragraph {
    L’embouchure une fois posée, il ne faut plus la déranger ni pour monter, ni pour descendre; on doit
    obtenir ces résultats par la flexibilité des lèvres. .Il serait impossible d’exécuter de certains
    passages, si on était obligé de changer l’embouchure de place pour prendre avec rapidité une note
    grave après une note élevée.
  }
  
  \paragraph {
    Pour faire sortir les notes hautes, il est nécessaire d’opérer une certaine pression sur les lèvres,
    de manière à leur donner une tension proportionnée au degré de la note qu’on veut obtenir; les
    lèvres étant ainsi tendues, les virbrations deviennent plus courtes, et par conséquent les sons
    plus élevés.
  }
  
  \paragraph {
    Pour descendre, il faut, au contraire, appuyer l’embouchure plus légèrement, afin de donner plus
    d’ouverture au passage de l’air; les vibrations étant alors plus lentes par l’effet du relâchement
    des muscles, on obtient des sons graves conformes au degré d’ouverture que l’on donne aux lèvres.
  }
  
  \paragraph {
    Il ne faut jamais ramener les lèvres en avant ; il faut, au contraire, tirer les coins de la
    bouche : par ce moyen, on obtient un son beaucoup plus ouvert. Lorsque les lèvres commencent à
    être fatiguées, il ne faut jamais forcer les sons ; jouez alors plus piano ; car, en jouant
    fort, les lèvres se gonflent, et il devient impossible de faire sortir une note. On doit cesser
    de jouer quand les muscles commencent à se paralyser ; il y aurait folie à continuer, attendu
    qu’il s’ensuivrait peut-être des courbatures de lèvres qui pourraient durer fort longtemps.
  }
}

\markup \caps \bold \fill-line { \center-column { "Manière d’attaquer le son" } }

\markuplist {
  \paragraph {
    Il ne faut pas perdre de vue que l’expression : coup de langue n’est qu’un mot de convention ; la
    langue, en effet, ne donne pas de coup ; car, au lieu de frapper, elle opère, au contraire, un
    mouvement en arrière ; elle replit seulemen l’office d’une soupape.
  }
  \paragraph {
    Il faut se rendre bien compte de cet effet, avant de poser l’embouchure sur les lèvres. La langue
    doit être placée contre les dents de la mâchoire supérieure, de manière à ce que la bouche soit
    hermétiquement fermée. Au moment ooù la langue se retire, la colonne d’air, qui fait pression sur
    elle, se précipite violemment dans l’embouchure et produit le son.
  }
  \paragraph {
    La prononciation de la syllabe \italic tu sert à déterminer l’attaque du son. Cette syllabe peut
    être prononcée avec plus ou moins de douceur, suivant le degré de force que vous voulez donner à
    votre attaque. Lorsque sur une note il y a un point allongé
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c8^!_\markup tu [c^!_\markup tu c^!_\markup tu c^!_\markup tu ] c^!_\markup tu r8 r4 \fine
      }
    }
    
    cela indique que le son doit être fort court ; vous devez alors prononcer la syllabe \italic tu
    avec beaucoup de sécheresse. Lorsque, au contraire il n'y a qu'un point
    
    %TODO align tu tu tu (use a voice?)
    %     same for the other scores
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \stemUp
        \time 2/4
        g16_._\markup tu a_._\markup tu b_._\markup tu c_._\markup tu d_._\markup tu c_._\markup tu b_._\markup tu a_._\markup tu g8_._\markup tu r8 r4 \fine
      }
    }
    
    vous devez prononcer cette syllabe avec plus de douceur,, de manière que les sons, quoique
    détachés, se lient bien entre eux. Quand, sur une succession de notes, on met des points au-dessus
    desquels il y a un coulé
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \key d \major
        \time 6/8
        d8^._\markup tu (d^._\markup du d^._\markup du d^._\markup du cs^._\markup du b^._\markup du ) b4_\markup du ( a8) r r \fine 
      }
    }
    
    vous devrez invariablement poser la première note avec un \italic tu très-doux, et lui substituer
    ensuite la syllabe \italic du, par la raison que cette syllabe, tout en articulant chaque note,
    les lie parfaitement entre elles. (C'est ce que l'on nomme le coup de langue dans le son.)
  }
  \paragraph {
    Il n’y a que ces trois manières d’attaquer, c’est-à-dire de séparer les sons ; plus tard, je ferai
    connaître les autres articulations. Pour le moment, il n’y a lieu de connaître et d’étudier que le
    coup de langue simple, car de ce point de départ dépend entièrement le succès d’une bonne exécution.
  }
  \paragraph {
    Comme je l’ai dit plus haut, la manière d’attaquer le son laisse voir immédiatement si vous avez
    un bon ou un mauvais style. La première partie de cette méthode est entièrement consacrée à ce
    genre d’études ; je ne passerai aux coulés que quand l’élève saura parfaitement attaquer et poser
    le son.
  }
}

\markup \caps \bold \fill-line { \center-column { "Manière de respirer" } }

\markuplist {
  \paragraph {
    L’embouchure une fois placée sur les lèvres, la bouche doit s’entr’ouvrir sur les côtés, et la
    langue se retirer pour laisser pénétrer l’air dans les poumons. Le ventre ne doit pas se gonfler,
    il doit, au contraire, remonter au fur et à mesure que la poitrine grossit par l’effet de
    l’aspiration.
  }
  
  \paragraph {
    La langue doit alors s’avancer contre les dents de la mâchoire supérieure, de manière à fermer
    hermétiquement la bouche, comme le ferait une soupape chargée de maintenir la colonne d’air dans
    les poumons.
  }
  
  \paragraph {
    Au momont où la langue se retire, l’air qui faisait pression sur elle se précipite dans
    l’instrument et détermine les vibrations qui produisent le son. Le ventre alors doit reprendre
    doucement sa position primitive, en suivant le décroissement que la poitrine opère par l’effet de
    la diminution de l’air dans les poumons.
  }
  
  \paragraph {
    La respiration doit être suboordonnée à la longueur des traits que l’on veut exécuter ; plus un
    trait est long et plus il faut \italic aspirer abondamment. Dans les phrases courtes, une
    respiration trop forte et trop souvent répétée produit une suffocation occasionnée par le poids
    de la colonne d’air qui pèse trop lourdement sur les poumons. Il faut donc de bonne heure
    apprendre à bien ménager sa respiration, afin d’arriver au bout d’une longue phrase, en donnant au
    son toute sa puissance et sa fermeté.
  }
}

%TODO very big title
\markup \caps \bold \fill-line { \center-column { "DU STYLE" } }


\markup \caps \bold \fill-line { \center-column { "Défauts à éviter" } }

\markuplist {
  \paragraph {
    La première chose dont il y ait lieu de s’occuper, c’est de bien poser le son. C’est là le point
    de départ de toute bonne exécution, et un musicien dont l’émission est vicieuse ne sera jamais un
    bon artiste.
  }
  \paragraph {
    Dans le piano aussi bien que dans le forte, l’attaque du son doit être franche, nette, immédiate.
    Il faut, en attaquant, toujours articuler la syllabe \italic tu et non point la syllabe \italic doua
    comme un très-grand nombre d’exécutants ont coutume de faire. Cette dernière articulation fait
    prendre le son en dessous et lui donne une émission pâteuse et désagréable.
  }
  \paragraph {
    Après la pose du son, l’exécutant devra surtout s’attacher à posséder un bon style. Je ne veux
    point parler ici de cette qualité suprême qui est le point culminant de l’art et que possèdent si
    peu de virtuoses, même parmi les plus renommés et les plus habiles, mais simplement d’une qualité
    plus modeste dont l’absence arrêterait tout progrès, annihilerait tout résultat. Le naturel, la
    correction, l’exécution de la musique telle qu’elle est écrite, le phrasé dans le genre et le
    sentiment du morceau, voilà des mérites qui doivent assurément faire l’objet d’une aspiration
    constante de la part de l’élève, mais il ne doit espérer y atteindre qu’après s’être imposé
    rigoureusement la loi d’observer les valeurs. Le défaut contraire est si commun, surtout parmi
    les musiciens de régiment, que je crois devoir passer en revue les abus auxquels il peut donner
    lieu, en indiquant les moyens de s’en préserver.
  }
  \paragraph {
    Ainsi, par exemple, dans une mesure à deux-quatre, composée de quatre croches que l’on doit
    exécuter avec la plus grande égalité en prononçant
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c8^._\markup tu [c^._\markup tu c^._\markup tu c^._\markup tu ] c^._\markup tu r8 r4 \fine
      }
    }
    
    on trouve généralement le moyen d’allonger et d’écraser la quatrième croche en prononçant
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' { 
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c8_\markup ta [c_\markup ta c_\markup ta c^>_\markup tâ ] c_\markup da r8 r4 \fine
      }
    }
    
    Si dans ce même rhythme un morceau commence par une croche en levant, on donne alors trop
    d’importance à cette première note, qui, par le fait, n’a pas plus de valeur que les autres.
    Il faut exécuter ainsi, en séparant chaque note :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \time 2/4
        \partial 8
        g8^._\markup tu |
        c^._\markup tu [c^._\markup tu e^._\markup tu c^._\markup tu ] |
        b4^._\markup tu r4 \fine
      }
    }
    
    au lieu d’allonger la première, ainsi qu’il suit :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \time 2/4
        \partial 8
        g8^>_\markup tâ |
        c_\markup da [c_\markup ta e_\markup ta c^>_\markup tâ ] |
        b4_\markup da r4 \fine
      }
    }
    
    Dans la mesure à six-huit, les mêmes errements existent. On allonge la sixième croche de chaque 
    mesure, trop heureux encore quand on n’exécute pas ces six croches en sautillant.
  }
  \paragraph {
    On doit exécuter ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \time 6/8
        \key f \major
        f8_._\markup tu a_._\markup tu bf_._\markup tu c^._\markup tu d^._\markup tu e^._\markup tu |
        f^._\markup tu e^._\markup tu d^._\markup tu c4_\markup tu r8
        \fine
      }
    }
    
    au lieu de :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \time 6/8
        \key f \major
        f8_\markup ta a_\markup ta bf^>_\markup tâ c_\markup da d_\markup ta e^>_\markup tâ |
        f_\markup da e_\markup ta d^>_\markup tâ c4_\markup da r8
        \fine
      }
    }
    
    d’autres artistes font encore comme s’il y avait des croches suivies de doubles croches :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #4
        \time 6/8
        \key f \major
        f8.^>_\markup tâ a16_\markup de bf8_\markup de c8.^>_\markup tâ d16_\markup de e8_\markup de |
        f8.^>_\markup tâ e16_\markup de d8_\markup de c4^>_\markup tâ r8
        \fine
      }
    }
  }
  
  \paragraph {
   Le lecteur peut voir, par ce qui précède, combien une mauvaise articulation peut influer sur
   l'éxécution ; il ne faut pas se dissimuler que la langue étant à peu près aux instruments de cuivre
   ce que l'archet est au violon, si vous articulez d'une manière inégale, vous transmettrez aux notes
   émises dans l'instrument, les syllabes prononcées d'une façon inégale et boiteuse, et les fautes de
   rhythme qu'elles contiennent.
  }
  \paragraph {
    Dans les accompagnements, on a aussi, parfois, une manière détestable de faire les contre-temps. 
    Ainsi, dans la mesure à trois-quatre, on doit exécuter chaque note avec la plus grande égalité,
    sans allonger ni racourcir une des deux notes qui composent ce genre d'accompagnement. Exemple :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        \time 3/4
        r4 e_._\markup tu e_._\markup tu | r4 e_._\markup tu e_._\markup tu | 
        \fine
      }
    }
    
    au lieu de faire, comme on en a l'habitude : 
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        \time 3/4
        r4 e^>_\markup tâ e8_\markup da r 8 | r4 e^>_\markup tâ e8_\markup da r 8 |
        \fine
      }
    }
    
    dans la mesure à six-huit, on a pareillement une mauvaise manière d'exécuter les contre-temps,
    laquelle consiste à faire entendre la première note du contre-temps, comme si c'était une double
    croche, au lieu de donner la même valeur aux deux notes qui le composent. On doit exécuter ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        \time 6/8
        r8 c^._\markup tu c^._\markup tu r c^._\markup tu c^._\markup tu r c^._\markup tu c^._\markup tu r c^._\markup tu c^._\markup tu 
        \fine
      }
    }
    
    et non comme l’indique l’exemple suivant :
     
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        \time 6/8
        r8 r16 c_\markup te c8_\markup ta r8 r16 c_\markup te c8_\markup ta r8 r16 c_\markup te c8_\markup ta r8 r16 c_\markup te c8_\markup ta 
        \fine
      }
    }
  }
  
  \paragraph {
    Dans l’exécution ddes syncopes, il existe aussi généralement un défaut capital, surtout dans les 
    régiments, qui consiste à faire sentir la deuxième partie de la note syncopée.
  }
  \paragraph {
    Une syncope doit être traduite, mais il ne faut tpas faire entendre sa terminaison d’avantage que
    si, au lieu d’être une syncope, c’était une note frappée sur un temps fort.
  }
  \paragraph {
    Il faut l’exécuter en prononçant ainsi :
     
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        c8^._\markup tu c4^>_\markup tu c4^>_\markup tu c4^>_\markup tu c8^._\markup tu c4^>_\markup tu r4 r2
        \fine
      }
    }
    
    et non pas en prononçant :
    
    %TODO find how to shorten slightly the crescendos
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        c8_\markup ta c8_\markup ta- ^\< (c8_\markup a \!) c8_\markup ta- ^\< (c8_\markup a \! ) c8_\markup ta- ^\< (c8_\markup a \! ) c8_\markup ta c4_\markup ta r4 r2 
        \fine
      }
    }
    
    Il n’y a pas de raison pour que le milieu d’une syncope soit entendu avec plus de force que
    l’attaque de cette même note. L’essentiel consiste à faire entendre distinctement son point de 
    départ, et à soutenir cette même note pendant toute sa valeur, sans l’enfler vers le milieu.
  }
  
  \paragraph {
    Il faut exécuter l’exemple suivant avec une égalité mécanique, en prononçant sans presser :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c8^._\markup tu 16^._\markup tu 16^._\markup tu 8^._\markup tu 16^._\markup tu 16^._\markup tu 8^._\markup tu r8 r4
        \fine
      }
    }
    
    Observez bien, en outre,, que la première croche doit être séparée des deux doubles croches,
    comme s’il y avait entre elles un quart de soupir. Exemple :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c16_\markup tu [ r16 c16_\markup tu 16_\markup tu ] c16_\markup tu [ r16 c16_\markup tu 16_\markup tu ] c8_\markup tu r8 r4
        \fine
      }
    }
    
    et non pas comme on en a l’habitude, en traînant sur la première note, et en produisant un mauvais
    coup de langue, ainsi qu’il suit :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3.5
        \time 2/4
        c8^>_\markup ta c16_\markup de 16_\markup gue c8^>_\markup ta c16_\markup de 16_\markup gue 8_\markup da r8 r4
        \fine
      }
    }
    
    Plus tard, vous apprendrez la manière d’exécuter les mêmes traits en coup de langue, mais il faut
    préalablement exercer la langue à prononcer avec beaucoup de légèreté toute espèce de rhythme,
    sans avoir recours à ce genre d’articulation.
  }
  
  \paragraph {
    En dehors des défauts de rhythme qui viennent d’être signalés, il existe beaucoup d’autres défauts ;
    presque tous peuvent se rapporter à une ambition mal dirigée, à un gout douteux, à une fâcheuse
    tendance aux exagérations. Bien des artistes se figurent qu’ils font preuve de sentiment quand ils
    ont enflé des sons par saccade, et qu’ils ont abusé d’un tremblement produit au moyen du cou, et
    qui laisse entendre un certain \italic { ou ou ou } des plus désagréables.
  }
  
  \paragraph {
    L’oscillation du son s’obtient sur le cornet, de la même manière que sur le violon, par un léger
    mouvement de la main droite ; ce genre d’effet produit une grande sensibilité, mais il faut se
    garder d’en faire un abus, car son emploi trop fréquent deviendrait un grave défaut.
  }
  
  \paragraph {
    Même observatoin en ce qui concerne le \italic portamento précédé d’une petite note ; il y a des 
    artistes qui ne peuvent pas faire quatre notes sans y introduire un ou deux \italic portamento ;
    c’est là une manière déplorable qu’il convient de signaler, ainsi que l’abus du gruppetto.
  }
  
  \paragraph {
    En terminant le paragraphe où j’ai passé en revue les défauts les plus saillants et les plus
    fréquents qu’engendre un mauvais style (en indiquant la manière d’y remédier), je prends
    l’engagement de revenir avec insistance sur ce sujet chaque fois que s’en présentera l’occasion.
    Les mauvaises habitudes sont généralement trop enracinées chez les musiciens qui jouent des
    instruments de cuivre, pour céder à un seul avertissement, et on ne saurait leur faire une assez
    rude guerre.
  }
}

\markup \caps \bold \fill-line { \center-column { "Explication sur les premières études" } }

\markuplist {
  \paragraph {
    N° 1. Attaquez le son en prononçant la syllabe \italic tu, et soutenez-le bien en lui donnant 
    tout l’éclat et toute la force possible.
  }
  
  \paragraph {
    On ne doit, en aucune circonstance, gonfler les joues ; les lèvres ne doivent faire aucun bruit
    dans l’embouchure, ainsi que beaucoup de personnes se le figurent. Le son se forme de lui-même ;
    on doit seulement le bien attaquer, en tendant les lèvres, afin qu’il soit à sa hauteur, et non 
    pas au-dessous de son diapason, car, alors, il en résulterait un son désagréable et faux.
  }
  
  \paragraph {
    Les numéros 7 et 8 indiquent toutes les notes qui se font en employant les mêmes pistons. Les
    numéros 9 et 10, en passant dans tous les tons, sont destinés à compléter l’ensemble des doigtés,
    de manière à ne plus être obligé de marquer les numéros des pistons sous chaque note. Il faut donc
    jouer les deux premières leçoons pendant assez longtemps, pour être bien au courant du doigté de
    l’instrument.
  }
  
  \paragraph {
    Je n’indiquerai désormais que les doigtés qui donnent quelques facilités. Dans toutes les leçons,
    jusqu’au n° 50, il faut constamment attaquer chaque son et donner à chaque note leurs valeurs
    véritables ; toutes les premières études sont composées dans ce but.
  }
}

\markup \caps \bold \fill-line { \center-column { "Des syncopes" } }

%Add (Page n° 23) ?

\markuplist {
  \paragraph {
    La syncope est une note qui, au lieu d’être placée sur le temps fort, se place sur le temps faible.
    On doit la soutenir pendant toutes la durée de sa valeur, en faisant bien sentir son point de
    départ ; mais il ne faut, en aucun cas, faire entendre par saccade la deuxième partie de sa
    valeur.
  }
  
  \paragraph {
    On doit exécuter ainsi :
     
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #2
        c8^._\markup tu c4^>_\markup tu c4^>_\markup tu c4^>_\markup tu c8^._\markup tu c4^>_\markup tu r4 r2
        \fine
      }
    }
    
    et non pas ainsi :
    
    %TODO find how to slightly shorten the crescendos
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        c8_\markup ta c8_\markup ta- ^\< (c8_\markup a \!) c8_\markup ta- ^\< (c8_\markup a \! ) c8_\markup ta- ^\< (c8_\markup a \! ) c8_\markup ta c4_\markup ta r4 r2 
        \fine
      }
    }
  }
}

\markup \caps \bold \fill-line { \center-column { "Études composées de croches suivies de doubles croches" } }

%Add (Page n° 28) ?

\markuplist {
  \paragraph {
    Pour donner plus de légèreté à ces études, il faut que la première croche soit attaquée avec plus 
    de sécheresse que ne l’indique sa valeur ; on doit l’exécuter comme une double croche, en
    observant un silence entre elle et les deux doubles croches qui la suivent.
  }
  
  \paragraph {
    On écrit ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c8_\markup tu 16_\markup tu 16_\markup tu 8_\markup tu e16_\markup tu c_\markup tu g8_\markup tu 16_\markup tu 16_\markup tu 8_\markup tu r 
        \fine
      }
    }
    
    et l’on doit exécuter ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \time 2/4
        c16_\markup tu [ r16 c16_\markup tu 16_\markup tu ] 16_\markup tu [ r16 e16_\markup tu c_\markup tu ] g16_\markup tu [ r16 g16_\markup tu 16_\markup tu ] 8_\markup tu r 
        \fine
      }
    }
  }
  
  \paragraph {
    Il en est de même quand une croche, au lieu de précéder, suit les doubles croches.
  }
  
  \paragraph {
    On écrit ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \key ef \major
        \time 2/4
        ef8_\markup tu 16_\markup tu 16_\markup tu 16_\markup tu 16_\markup tu 8_\markup tu g8_\markup tu ef_\markup tu bf'4_\markup tu 
        \fine
      }
    }
    
    et l'on doit exécuter ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \key ef \major
        \time 2/4
        ef16_\markup tu [ r 16 ef16_\markup tu 16_\markup tu ] 16_\markup tu 16_\markup tu 16_\markup tu  r16 g16_\markup tu [ r16 ef16_\markup tu ] r16 bf'4_\markup tu 
        \fine
      }
    }
  }
  
  \paragraph {
    On écrit ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \key bf \major
        \time 2/4
        bf16 16 16 16 8 d f16 16 16 16 d8 bf c16 16 16 16 8 f f,4 r
        \fine
      }
    }
      
      et l'on doit exécuter ainsi :
    
    \raise #0.5 \score {
      \layout {
        indent = 0
        #(layout-set-staff-size 14)
      }
      \relative c'' {
        \textLengthOn
        \override TextScript.staff-padding = #3
        \key bf \major
        \time 2/4
        bf16^! 16^! 16^! 16^! 16^! [ r d^! ] r f16^! 16^! 16^! 16^! d16^! [ r bf^! ] r c16^! 16^! 16^! 16^! 16^! [ r f^! ] r f,4 r
        \fine
      }
    }
  }
}

%TODo find how to draw a real 6 over 8 symbol
\markup \caps \bold \fill-line { \center-column { "Études sur la mesure à 6/8" } }

%Add (Page n° 32) ?

\markuplist {
  \paragraph {
    Dans la mesure à 6/8, on doit exécuter les croches en les séparant bien et en leur donnant une
    valeur égale. Il ne faut, en conséquence, jamais traîner sur la troisième croche de chaque temps.
    Les croches pointées, ainsi que les croches suivies de doubles croches, s'exécutent dans ce 
    rhythme, en observant les mêmes règles que dans le 2/4.
  }
}