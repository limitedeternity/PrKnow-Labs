domains
  person=string

predicates
            
  nondeterm female(person) %  �������(�������)
  nondeterm male(person) % ��������(�������)
  nondeterm parents(person,person,person) % ���������(�������,����,����)   
  % ------------     
  nondeterm aunt(person,person) % (�) ����(���-��,���/��_����)
  % ------------
  nondeterm greatGrandDaughter(person,person,person) % (�) ���������(���������,��_����������,��_����������)
  nondeterm grandSon(person,person,person) %  ����(����,���_�������,���_�������)
  nondeterm grandDaughter(person,person,person) %  ������(������,��_�������,��_�������)
  % ------------
  nondeterm greatGreatGrandFather(person,person) % (�) �������������(���-��,���/��_����������)
  nondeterm greatGrandFather(person,person) %  ����������(���-��,���/��_����������)
  nondeterm greatGrandMother(person,person) %  ����������(���-��,���/��_����������)
  nondeterm grandFather(person,person) % �������(���-��, ���/��_�������)
  nondeterm grandMother(person,person) % �������(���-��, ���/��_�������)
         
clauses
  male("������� ����������").
  male("������� ����������").
  male("������� ����������").
  male("Ը��� III ����������").
  male("���� V ����������"). 
  male("����-�������� ����������-���������� (���)"). 
  male("�������-��������� ����������� (���)"). 
  male("ϸ�� I"). 
  male("������� ��������"). 
  male("ϸ�� II"). 
  male("��������� ��������").
  male("����-������� ����������� (���)").
  male("ϸ�� ��������").
  male("����� ��������").
  
  female("����� ���������� ������������").
  female("������� ����������").
  female("����� ����������").
  female("���� ����������").
  female("����� ����������").
  female("��������� ���������").
  female("����� ����������").
  female("������ �������� ��������� (������ ����)").
  female("����� ��������� ���������  (������ ����)").
  female("�������� ����������").
  female("��������� Ը������� ��������� (����)").
  female("����� ���������").
  female("������� ���������").
  female("��������� ���������").
  female("���� I ���������").
  female("��������� ���������").
  female("������� ���������� (II)").
  female("������� ���������� ��������� (������ ����)").
  female("������� �������� (������ ����)").
  female("�������� ����������-������������������ (����)").
  female("������� ����������").
  female("��������� I (������ ����)").
  female("��������� ��������").
  female("���� ��������").
  female("��������� ��������").
  female("������� �������� (I)").
  female("��������� ��������").
  female("������� �������� (II)").
  female("������� ����������").
  female("������� ����������").
  
  parents("������� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("������� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("����� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("������� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("���� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("����� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("��������� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("����� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("Ը��� III ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("�������� ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("���� V ����������","������� ����������","����� ���������� ������������ (������ ����)").
  parents("������� ���������� (II)","������� ����������","����� ���������� ������������ (������ ����)").

  parents("ϸ�� I","������� ����������","������� ���������� ��������� (������ ����)").
  parents("������� ����������","������� ����������","������� ���������� ��������� (������ ����)").
  parents("������� ����������","������� ����������","������� ���������� ��������� (������ ����)").
  
  parents("����� ���������","���� V ����������"," ��������� Ը������� ��������� (����)").
  parents("������� ���������","���� V ����������"," ��������� Ը������� ��������� (����)").
  parents("��������� ���������","���� V ����������"," ��������� Ը������� ��������� (����)").
  parents("���� I ���������","���� V ����������"," ��������� Ը������� ��������� (����)").
  parents("��������� ���������","���� V ����������"," ��������� Ը������� ��������� (����)").
  
  parents("������� ��������","ϸ�� I","������� �������� (������ ����)").
  parents("��������� ��������","ϸ�� I","������� �������� (������ ����)").

  parents("ϸ�� II"," ������� ��������","�������� ����������-������������������ (����)").
  parents("������� ����������"," ������� ��������","�������� ����������-������������������ (����)").      

  parents("��������� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("���� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("��������� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("������� �������� (I)","ϸ�� I","��������� I (������ ����)").      
  parents("��������� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("ϸ�� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("����� ��������","ϸ�� I","��������� I (������ ����)").      
  parents("������� �������� (II)","ϸ�� I","��������� I (������ ����)").            
                     
  % ������ ���� ��� ������, � ����� ���� ����.
  aunt(X,A):- female(A), parents(A,Gf,Gm), parents(F,Gf,Gm),parents(X,F,_).
  aunt(X,A):- female(A), parents(A,Gf,Gm), parents(M,Gf,Gm),parents(X,_,M), M<>A.
  aunt(X,A):- female(A), male(U), parents(_,A,U), parents(U,Gf,Gm), parents(F,Gf,Gm), parents(X,F,_), F<>U.
  aunt(X,A):- female(A), male(U), parents(_,A,U), parents(U,Gf,Gm), parents(M,Gf,Gm), parents(X,_,M).
  
  % ���� ����� ��� ������
  greatGrandDaughter(X,Ggf,Ggm):- female(X), parents(X,Gs,_), grandSon(Gs,Ggf,Ggm).
  greatGrandDaughter(X,Ggf,Ggm):- female(X), parents(X,_,Gd), grandDaughter(Gd,Ggf,Ggm).
  
  % ����
  grandSon(X,Gf,Gm):- male(X), parents(F,Gf,Gm), parents(X,F,_).
  grandSon(X,Gf,Gm):- male(X), parents(M,Gf,Gm), parents(X,_,M).
	  
  % ������
  grandDaughter(X,Gf,Gm):- female(X), parents(F,Gf,Gm), parents(X,F,_).
  grandDaughter(X,Gf,Gm):- female(X), parents(M,Gf,Gm), parents(X,_,M).
  
  % ���� ���������� ��� ���� ����������.
  greatGreatGrandFather(X,Gggf):- parents(Ggf,Gggf,_), greatGrandFather(X,Ggf).
  greatGreatGrandFather(X,Gggf):- parents(Ggm,Gggf,_), greatGrandMother(X,Ggm).
  
  % ������� ���� ��� ������.
  greatGrandFather(X,Ggf):- parents(X,F,_), grandFather(F,Ggf).
  greatGrandFather(X,Ggf):- parents(X,_,M), grandFather(M,Ggf).
 
  % ������� ���� ��� ������.
  greatGrandMother(X,Ggm):- parents(X,F,_), grandMother(F,Ggm).
  greatGrandMother(X,Ggm):- parents(X,_,M), grandMother(M,Ggm).
  
  % ���� ���� ��� ������.
  grandFather(X,Gf):- parents(X,F,_), parents(F,Gf,_).
  grandFather(X,Gf):- parents(X,_,M), parents(M,Gf,_).
  
  % ���� ���� ��� ������.
  grandMother(X,Gm):- parents(X,F,_), parents(F,_,Gm).
  grandMother(X,Gm):- parents(X,_,M), parents(M,_,Gm).

goal
  % aunt(X, A), nl, write("��� ", X , " ���� -- ", A), nl.
  % greatGrandDaughter(X, Ggf, Ggm), nl, write("��� ", Ggf , " � ", Ggm, " ��������� -- ", X), nl.
  % greatGreatGrandfather(X, Gggf), nl, write("��� ", X , " ������������� -- ", Gggf), nl.
