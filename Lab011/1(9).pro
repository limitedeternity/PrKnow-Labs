predicates
  nondeterm human(symbol, symbol)
  rule1(symbol, symbol)
  rule2(symbol, symbol, symbol)
  nondeterm check(symbol)
  
clauses
  human("���������","������").
  human("���������","����").
  
  rule1(/* IN: ��� P1 */ "������", /* OUT: ��� P2 */ "����").
  rule1(/* IN: ��� P1 */ "����", /* OUT: ��� P2 */ "������").
  
  rule2(/* IN: ��� P2 */ "������", /* IN: ��� P1 */ "����", /* OUT: ��� P3 */ "������").
  rule2(/* IN: ��� P2 */ "������", /* IN: ��� P1 */ "������", /* OUT: ��� P3 */ "����"). /* ���������� */
  rule2(/* IN: ��� P2 */ "����", /* IN: ��� P1 */ "����", /* OUT: ��� P3 */ "����"). /* ���������� */
  rule2(/* IN: ��� P2 */ "����", /* IN: ��� P1 */ "������", /* OUT: ��� P3 */ "������").
  
  check(P3):- human("���������", P1), human("���������", P2), human("���������", P3),
              rule1(P1, P2), rule2(P2, P1, P3).

goal
  check(P3).
  
  
  