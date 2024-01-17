Feature: 20 years since the death of the brave Himmel
  I'm sure the brave Himmel would do that

  Scenario: Monk Heiter adopted Fern, a war orphan
    Given he was on a hill near a city destroyed by the attack
    When he headed to the top of the hill
    Then A little girl was standing alone on the hill

  Scenario Outline: ハイターはフリーレンに魔術書の解読を依頼する
    Given フェルンを旅に連れて行くというハイターの願いをフェルンは断った
    When ハイターは代わりとして魔術書の解読をなる早でフェルンに依頼した
    Then フェルンは承諾して、<year>年後に魔術書を解読<result>
    Examples:
      | year | result |
      | 1    | できなかった |
      | 2    | できなかった |
      | 3    | できなかった |
      | 4    | できなかった |
      | 5    | した     |
