domains
  name = symbol
  age = integer
  gender = symbol
  occupation = symbol
  weapon = symbol
  reason = symbol
  smear = symbol
  item = symbol

predicates
  nondeterm person(name, age, gender, occupation).
  nondeterm had_affair(name, name).
  nondeterm killed_with(name, weapon).
  nondeterm motive(reason).
  nondeterm smeared_in(name, smear).
  nondeterm owns(name, item).
  nondeterm operates_identically(item, weapon).
  nondeterm owns_probably(name, item).
  nondeterm suspect(name).
  
clauses
    person("Allan",25,m,football_player). % персона(Аллан,25,m,футболист)
    person("Allan",25,m,butcher).         % персона(Аллан,25,m,убийца)
    person("Barbara",22,f,hairdresser).   % персона(Барбара,22,f,парикмахер)
    person("Bert",55,m,carpenter).        % персона(Берт,55,m,плотник)
    person("John",25,m,pickpocket).       % персона(Джон,25,m,карманник)

    had_affair("Barbara","John"). % близкие_отношения(Барбара,Джон)
    had_affair("Barbara","Bert"). % близкие_отношения(Барбара,Берт)
    had_affair("Susan","John").   % близкие_отношения(Сюзан,Джон)

    killed_with("Susan",club). % убит_с_помощью(Сюзан,дубинка)

    motive(money).    % мотив(деньги)
    motive(jealousy). % мотив(ревность)

    smeared_in("Catherine",blood). % испачкан_в(Катрин,кровь)
    smeared_in("Allan",mud).       % испачкан_в(Аллан,грязь)

    owns("Bert",wooden_leg). % владелец(Берт,деревянная_нога)
    owns("John",pistol).     % владелец(Джон,пистолет)

    /* Некоторые факты */
    operates_identically(wooden_leg,club).
                                    % работает_одинаково(деревянная_нога,дубинка)
    operates_identically(bar,club).
                                    % работает_одинаково(брусок,дубинка)
    operates_identically(pair_of_scissors,knife).
                                    % работает_одинаково(ножницы,нож)
    operates_identically(football_boot,club).
                                    % работает_одинаково(бутса,дубинка)

    owns_probably(X,football_boot) :-  % вероятный_владелец(X,бутса), если
        person(X,_,_,football_player). % персона(X,_,_, футболист)

    owns_probably(X,pair_of_scissors):- % вероятный_владелец(X,ножницы), если
        person(X,_,_,_).              % персона(X,_,_,_)
                                    
    owns_probably(X,Object):- % вероятный_владелец(X,Предмет), если
        owns(X,Object).       % владелец(X,Предмет)

    /* Подозреваем всех, кому принадлежат орудия, с помощью */
    /* которых, вероятно, Сюзанна была убита                */
    suspect(X):-                             % подозреваем(X), 
        killed_with("Susan",Weapon),         % если убит_с_помощью(Сюзанна,Оружие) и
        operates_identically(Object,Weapon), % работает_одинаково(Предмет,Оружие) и
        owns_probably(X,Object).             % вероятно_принадлежит(X,Предмет)

    suspect(X):-               % подозреваем(X), 
        motive(jealousy),      % если мотив(ревность) и
        person(X,_,m,_),       % персона(X,_,m,_) и
        had_affair("Susan",X). % близкие_отношения(Сюзанна,X)

    /* Подозреваем женщин, которые имели близкие отношения */
    /* с мужчинами, знавшими Сюзанну                       */
    suspect(X):-                 % подозреваем(X),
        motive(jealousy),        % если мотив(ревность) и
        person(X,_,f,_),         % персона(X,_,f,_) и
        had_affair(X,Man),       % близкие_отношения(X,Мужчина) и
        had_affair("Susan",Man). % близкие_отношения(Сюзанна,Мужчина)

    /* Подозреваем карманников, которые могли убить из-за денег */
    suspect(X):-                  % подозреваем(X), 
        motive(money),            % если мотив(деньги) и
        person(X,_,_,pickpocket). % персона(X,_,_, карманник)

goal
  suspect(X), nl.