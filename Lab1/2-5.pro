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
    person("Allan",25,m,football_player). % �������(�����,25,m,���������)
    person("Allan",25,m,butcher).         % �������(�����,25,m,������)
    person("Barbara",22,f,hairdresser).   % �������(�������,22,f,����������)
    person("Bert",55,m,carpenter).        % �������(����,55,m,�������)
    person("John",25,m,pickpocket).       % �������(����,25,m,���������)

    had_affair("Barbara","John"). % �������_���������(�������,����)
    had_affair("Barbara","Bert"). % �������_���������(�������,����)
    had_affair("Susan","John").   % �������_���������(�����,����)

    killed_with("Susan",club). % ����_�_�������(�����,�������)

    motive(money).    % �����(������)
    motive(jealousy). % �����(��������)

    smeared_in("Catherine",blood). % ��������_�(������,�����)
    smeared_in("Allan",mud).       % ��������_�(�����,�����)

    owns("Bert",wooden_leg). % ��������(����,����������_����)
    owns("John",pistol).     % ��������(����,��������)

    /* ��������� ����� */
    operates_identically(wooden_leg,club).
                                    % ��������_���������(����������_����,�������)
    operates_identically(bar,club).
                                    % ��������_���������(������,�������)
    operates_identically(pair_of_scissors,knife).
                                    % ��������_���������(�������,���)
    operates_identically(football_boot,club).
                                    % ��������_���������(�����,�������)

    owns_probably(X,football_boot) :-  % ���������_��������(X,�����), ����
        person(X,_,_,football_player). % �������(X,_,_, ���������)

    owns_probably(X,pair_of_scissors):- % ���������_��������(X,�������), ����
        person(X,_,_,_).              % �������(X,_,_,_)
                                    
    owns_probably(X,Object):- % ���������_��������(X,�������), ����
        owns(X,Object).       % ��������(X,�������)

    /* ����������� ����, ���� ����������� ������, � ������� */
    /* �������, ��������, ������� ���� �����                */
    suspect(X):-                             % �����������(X), 
        killed_with("Susan",Weapon),         % ���� ����_�_�������(�������,������) �
        operates_identically(Object,Weapon), % ��������_���������(�������,������) �
        owns_probably(X,Object).             % ��������_�����������(X,�������)

    suspect(X):-               % �����������(X), 
        motive(jealousy),      % ���� �����(��������) �
        person(X,_,m,_),       % �������(X,_,m,_) �
        had_affair("Susan",X). % �������_���������(�������,X)

    /* ����������� ������, ������� ����� ������� ��������� */
    /* � ���������, �������� �������                       */
    suspect(X):-                 % �����������(X),
        motive(jealousy),        % ���� �����(��������) �
        person(X,_,f,_),         % �������(X,_,f,_) �
        had_affair(X,Man),       % �������_���������(X,�������) �
        had_affair("Susan",Man). % �������_���������(�������,�������)

    /* ����������� �����������, ������� ����� ����� ��-�� ����� */
    suspect(X):-                  % �����������(X), 
        motive(money),            % ���� �����(������) �
        person(X,_,_,pickpocket). % �������(X,_,_, ���������)

goal
  suspect(X), nl.