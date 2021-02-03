domains
  person=string

predicates
            
  nondeterm female(person) %  Девочка(ребенок)
  nondeterm male(person) %  Мальчик(ребенок)
  nondeterm parents(person,person,person) %  Родители(ребенок,отец,мать)   
  % ------------     
  nondeterm aunt(person,person) % (б) Тетя(кто-то,его/ее_тетя)
  % ------------
  nondeterm greatGrandDaughter(person,person,person) % (д) Правнучка(правнучка,ее_прадедушка,ее_прабабушка)
  nondeterm grandSon(person,person,person) %  Внук(внук,его_дедушка,его_бабушка)
  nondeterm grandDaughter(person,person,person) %  Внучка(внучка,ее_дедушка,ее_бабушка)
  % ------------
  nondeterm greatGreatGrandFather(person,person) % (н) Прапрадедушка(кто-то,его/ее_прадедушка)
  nondeterm greatGrandFather(person,person) %  Прадедушка(кто-то,его/ее_прадедушка)
  nondeterm greatGrandMother(person,person) %  Прабабушка(кто-то,его/ее_прабабушка)
  nondeterm grandFather(person,person) % Дедушка(кто-то, его/ее_дедушка)
  nondeterm grandMother(person,person) % Бабушка(кто-то, его/ее_бабушка)
         
clauses
  male("Алексей Михайлович").
  male("Дмитрий Алексеевич").
  male("Алексей Алексеевич").
  male("Фёдор III Алексеевич").
  male("Иван V Алексеевич"). 
  male("Карл-Леопольд Мекленбург-Шверинский (муж)"). 
  male("Фридрих-Вильгельм Курдяндский (муж)"). 
  male("Пётр I"). 
  male("Алексей Петрович"). 
  male("Пётр II"). 
  male("Александр Петрович").
  male("Карл-Фридрих Голштинский (муж)").
  male("Пётр Петрович").
  male("Павел Петрович").
  
  female("Мария Ильиничная Милославская").
  female("Евдокия Алексеевна").
  female("Марфа Алексеевна").
  female("Анна Алексеевна").
  female("Софья Алексеевна").
  female("Екатерина Алексеевн").
  female("Мария Алексеевна").
  female("Агафья Семёновна Грушецкая (первая жена)").
  female("Марфа Матвеевна Апраксина  (вторая жена)").
  female("Феодосия Алексеевна").
  female("Прасковья Фёдоровна Салтыкова (жена)").
  female("Мария Иоанновна").
  female("Фодосия Иоанновна").
  female("Екатерина Иоанновна").
  female("Анна I Иоанновна").
  female("Прасковья Иоанновна").
  female("Евдокия Алексеевна (II)").
  female("Наталья Кирилловна Нарышкина (вторая жена)").
  female("Евдокия Лопухина (первая жена)").
  female("Шарлотта Брауншвейг-Вольфенбюттельская (жена)").
  female("Наталья Алексеевна").
  female("Екатерина I (вторая жена)").
  female("Екатерина Петровна").
  female("Анна Петровна").
  female("Елизавета Петровна").
  female("Наталья Петровна (I)").
  female("Маргарита Петровна").
  female("Наталья Петровна (II)").
  female("Наталья Алексеевна").
  female("Феодора Алексеевна").
  
  parents("Дмитрий Алексеевич","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Евдокия Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Марфа Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Алексей Алексеевич","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Анна Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Софья Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Екатерина Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Мария Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Фёдор III Алексеевич","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Феодосия Алексеевна","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Иван V Алексеевич","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").
  parents("Евдокия Алексеевна (II)","Алексей Михайлович","Мария Ильиничная Милославская (первая жена)").

  parents("Пётр I","Алексей Михайлович","Наталья Кирилловна Нарышкина (вторая жена)").
  parents("Наталья Алексеевна","Алексей Михайлович","Наталья Кирилловна Нарышкина (вторая жена)").
  parents("Феодора Алексеевна","Алексей Михайлович","Наталья Кирилловна Нарышкина (вторая жена)").
  
  parents("Мария Иоанновна","Иван V Алексеевич"," Прасковья Фёдоровна Салтыкова (жена)").
  parents("Фодосия Иоанновна","Иван V Алексеевич"," Прасковья Фёдоровна Салтыкова (жена)").
  parents("Екатерина Иоанновна","Иван V Алексеевич"," Прасковья Фёдоровна Салтыкова (жена)").
  parents("Анна I Иоанновна","Иван V Алексеевич"," Прасковья Фёдоровна Салтыкова (жена)").
  parents("Прасковья Иоанновна","Иван V Алексеевич"," Прасковья Фёдоровна Салтыкова (жена)").
  
  parents("Алексей Петрович","Пётр I","Евдокия Лопухина (первая жена)").
  parents("Александр Петрович","Пётр I","Евдокия Лопухина (первая жена)").

  parents("Пётр II"," Алексей Петрович","Шарлотта Брауншвейг-Вольфенбюттельская (жена)").
  parents("Наталья Алексеевна"," Алексей Петрович","Шарлотта Брауншвейг-Вольфенбюттельская (жена)").      

  parents("Екатерина Петровна","Пётр I","Екатерина I (вторая жена)").      
  parents("Анна Петровна","Пётр I","Екатерина I (вторая жена)").      
  parents("Елизавета Петровна","Пётр I","Екатерина I (вторая жена)").      
  parents("Наталья Петровна (I)","Пётр I","Екатерина I (вторая жена)").      
  parents("Маргарита Петровна","Пётр I","Екатерина I (вторая жена)").      
  parents("Пётр Петрович","Пётр I","Екатерина I (вторая жена)").      
  parents("Павел Петрович","Пётр I","Екатерина I (вторая жена)").      
  parents("Наталья Петровна (II)","Пётр I","Екатерина I (вторая жена)").            
                     
  % Сестра отца или матери, а также жена дяди.
  aunt(X,A):- female(A), parents(A,Gf,Gm), parents(F,Gf,Gm),parents(X,F,_).
  aunt(X,A):- female(A), parents(A,Gf,Gm), parents(M,Gf,Gm),parents(X,_,M), M<>A.
  aunt(X,A):- female(A), male(U), parents(_,A,U), parents(U,Gf,Gm), parents(F,Gf,Gm), parents(X,F,_), F<>U.
  aunt(X,A):- female(A), male(U), parents(_,A,U), parents(U,Gf,Gm), parents(M,Gf,Gm), parents(X,_,M).
  
  % Дочь внука или внучки
  greatGrandDaughter(X,Ggf,Ggm):- female(X), parents(X,Gs,_), grandSon(Gs,Ggf,Ggm).
  greatGrandDaughter(X,Ggf,Ggm):- female(X), parents(X,_,Gd), grandDaughter(Gd,Ggf,Ggm).
  
  % Внук
  grandSon(X,Gf,Gm):- male(X), parents(F,Gf,Gm), parents(X,F,_).
  grandSon(X,Gf,Gm):- male(X), parents(M,Gf,Gm), parents(X,_,M).
	  
  % Внучка
  grandDaughter(X,Gf,Gm):- female(X), parents(F,Gf,Gm), parents(X,F,_).
  grandDaughter(X,Gf,Gm):- female(X), parents(M,Gf,Gm), parents(X,_,M).
  
  % Отец прадедушки или отец прабабушки.
  greatGreatGrandFather(X,Gggf):- parents(Ggf,Gggf,_), greatGrandFather(X,Ggf).
  greatGreatGrandFather(X,Gggf):- parents(Ggm,Gggf,_), greatGrandMother(X,Ggm).
  
  % Дедушка отца или матери.
  greatGrandFather(X,Ggf):- parents(X,F,_), grandFather(F,Ggf).
  greatGrandFather(X,Ggf):- parents(X,_,M), grandFather(M,Ggf).
 
  % Бабушка отца или матери.
  greatGrandMother(X,Ggm):- parents(X,F,_), grandMother(F,Ggm).
  greatGrandMother(X,Ggm):- parents(X,_,M), grandMother(M,Ggm).
  
  % Отец отца или матери.
  grandFather(X,Gf):- parents(X,F,_), parents(F,Gf,_).
  grandFather(X,Gf):- parents(X,_,M), parents(M,Gf,_).
  
  % Мать отца или матери.
  grandMother(X,Gm):- parents(X,F,_), parents(F,_,Gm).
  grandMother(X,Gm):- parents(X,_,M), parents(M,_,Gm).

goal
  % aunt(X, A), nl, write("Для ", X , " тетя -- ", A), nl.
  % greatGrandDaughter(X, Ggf, Ggm), nl, write("Для ", Ggf , " и ", Ggm, " правнучка -- ", X), nl.
  % greatGreatGrandfather(X, Gggf), nl, write("Для ", X , " прапрадедушка -- ", Gggf), nl.
