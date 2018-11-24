(deftemplate fact
	(slot id)
	(slot name)
)
 
(deftemplate terminal_fact
	(slot id)
	(slot name)
)



; f18 = f20
; f19 = not f15
; f20 = f18
; f21 = f19
;r1 : f17, f19 : s7
(defrule r1
	(fact (id f17)) 
	(not (fact (id f15)))
	=>
	(assert (fact (id s7) (name "Работает.")))
)
;r2 : f9 : s6
(defrule r2
	(fact (id f9))
	=>
	(assert (fact (id s6) (name "Тупой.")))
)
;r3 : f10 : s8
(defrule r3
	(fact (id f10))
	=>
	(assert (fact (id s8) (name "Влюблённый.")))
)
;r4 : f11, f12 : s1
(defrule r4
	(fact (id f11)) 
	(fact (id f12))
	=>
	(assert (fact (id s1) (name "Любит покушать.")))
)
;r5 : f8 : s10   
(defrule r5
	(fact (id f8))
	=>
	(assert (fact (id s10) (name "Родитель.")))
)
;r6 : f6, f21 : s9
(defrule r6
	(fact (id f6)) 
	(fact (id f19))
	=>
	(assert (fact (id s9) (name "Неудачник.")))
)
;r7 : f12 : s12
(defrule r7
	(fact (id f12)) 
	=>
	(assert (fact (id s12) (name "Имеет вредные привычки.")))
)
;r8 : f6, s12 : s13
(defrule r8
	(fact (id f6)) 
	(fact (id s12))
	=>
	(assert (fact (id s13) (name "Любит выпить.")))
)
;r9 : s1, s7, s10, s13: t1
(defrule r9
	(fact (id s1)) 
	(fact (id s7))
	(fact (id s10))
	(fact (id s13))
	=>
	(assert (terminal_fact (id t1) (name "Гомер Симпсон")))
)
;r10 : f6, f13 : s14, s9
(defrule r10
	(fact (id f6)) 
	(fact (id f13))
	=>
	(assert (fact (id s14) (name "Доверчив.")))
	(assert (fact (id s9) (name "Неудачник.")))
)
;r11 : s14, s9 : s15
(defrule r11
	(fact (id s14)) 
	(fact (id s9))
	=>
	(assert (fact (id s15) (name "Попадает под влияние других людей.")))
)
;r12 : f12, f16 : s16
(defrule r12
	(fact (id f12)) 
	(fact (id f16))
	=>
	(assert (fact (id s16) (name "Плохое зрение.")))
)
;r13 : f15, f17 : s17
(defrule r13
	(fact (id f15)) 
	(fact (id f17))
	=>
	(assert (fact (id s17) (name "Школьник.")))
)
;r14 : s15, s16, s17 : t8
(defrule r14
	(fact (id s15)) 
	(fact (id s16))
	(fact (id s17))
	=>
	(assert (terminal_fact (id t8) (name "Милхаус Ван Хутен")))
)
;r15 : f7, f11 : s2
(defrule r15
	(fact (id f7)) 
	(fact (id f11))
	=>
	(assert (fact (id s2) (name "Хорошо готовит.")))
)
;r16 : f18, f19, s2 : s18
(defrule r16
	(fact (id s2))
	(fact (id f20))
	(not (fact (id f15)))
	=>
	(assert (fact (id s18) (name "Домохозяйка.")))
)
;r17 : s2, s8, s10, s18 : t2
(defrule r17
	(fact (id s2)) 
	(fact (id s8))
	(fact (id s10))
	(fact (id s18))
	=>
	(assert (terminal_fact (id t2) (name "Мардж Симпсон")))
)
;r18 : f4, s12 : s19
(defrule r18
	(fact (id f4)) 
	(fact (id s12))
	=>
	(assert (fact (id s19) (name "Курит.")))
)
;r19 : f4, f14 : s3
(defrule r19
	(fact (id f4)) 
	(fact (id f14))
	=>
	(assert (fact (id s3) (name "Задира.")))
)
;r20 : s3, s7, s19 : t7
(defrule r20
	(fact (id s3)) 
	(fact (id s7))
	(fact (id s19))
	=>
	(assert (terminal_fact (id t7) (name "Пэтти Бувье")))
)
;r21 : f14, f6 : s3
(defrule r21
	(fact (id f14)) 
	(fact (id f6))
	=>
	(assert (fact (id s3) (name "Задира.")))
)
;r22 : s3, s8, s17 : t3
(defrule r22
	(fact (id s3)) 
	(fact (id s8))
	(fact (id s17))
	=>
	(assert (terminal_fact (id t3) (name "Барт Симпсон")))
)
;r23 : f2, s3, s17 : t9
(defrule r23
	(fact (id f2)) 
	(fact (id s3))
	(fact (id s17))
	=>
	(assert (terminal_fact (id t9) (name "Нельсон Манц")))
)
;r24 : f2, s8 : s20
(defrule r24
	(fact (id f2)) 
	(fact (id s8))
	=>
	(assert (fact (id s20) (name "Слаборазвитый.")))
)
;r25 : f18, f19 : s21
(defrule r25
	(fact (id f20))
	(not (fact (id f15)))
	=>
	(assert (fact (id s21) (name "Старик.")))
)
;r26 : f12, s21 : s16
(defrule r26
	(fact (id f12))
	(fact (id s21))
	=>
	(assert (fact (id s16) (name "Плохое зрение.")))
)
;r27 : s10, s16, s21 : t6
(defrule r27
	(fact (id s10))
	(fact (id s16))
	(fact (id s21))
	=>
	(assert (terminal_fact (id t6) (name "Абрахам Симпсон")))
)
;r28 : f1, f20, s7 : s22
(defrule r28
	(fact (id f1))
	(fact (id f18))
	(fact (id s7))
	=>
	(assert (fact (id s22) (name "Богатый.")))
)
;r29 : f2, s10 : s23
(defrule r29
	(fact (id f2))
	(fact (id s10))
	=>
	(assert (fact (id s23) (name "Плохой родитель.")))
)
;r30 : s3, s23, s22 : t10
(defrule r30
	(fact (id s3))
	(fact (id s23))
	(fact (id s22))
	=>
	(assert (terminal_fact (id t10) (name "Чарльз Монтгомери Бёрнс")))
)
;r31 : f16, s17 : s4
(defrule r31
	(fact (id f16))
	(fact (id s17))
	=>
	(assert (fact (id s4) (name "Любит учиться.")))
)
;r32 : f20, s4 : s11
(defrule r32
	(fact (id f18))
	(fact (id s4))
	=>
	(assert (fact (id s11) (name "Отличница.")))
)
;r33 : f3, f7, s8, s11 : t4
(defrule r33
	(fact (id f3))
	(fact (id f7))
	(fact (id s8))
	(fact (id s11))
	=>
	(assert (terminal_fact (id t4) (name "Лиза Симпсон")))
)
;r34 : f15, f18 : s20
(defrule r34
	(fact (id f15))
	(fact (id f20))
	=>
	(assert (fact (id s20) (name "Слаборазвитый.")))
)
;r35 : f9, f13 : s15
(defrule r35
	(fact (id f9))
	(fact (id f13))
	=>
	(assert (fact (id s15) (name "Попадает под влияние других людей.")))
)
;r36 : f18, s15, s20 : t5
(defrule r36
	(fact (id f20))
	(fact (id s15))
	(fact (id s20))
	=>
	(assert (terminal_fact (id t5) (name "Мэгги Симпсон")))
)
;r37 : f13 : s14
(defrule r37
	(fact (id f13))
	=>
	(assert (fact (id s14) (name "Доверчив.")))
)
;r38 : f5, f20 : s5
(defrule r38
	(fact (id f5))
	(fact (id f18))
	=>
	(assert (fact (id s5) (name "Живёт по правилам.")))
)
;r39 : f3, s5, s14 : s24
(defrule r39
	(fact (id f3))
	(fact (id s5))
	(fact (id s14))
	=>
	(assert (fact (id s24) (name "Религиозный.")))
)
;r40 : s8, s10, s24 : t11
(defrule r40
	(fact (id s8))
	(fact (id s10))
	(fact (id s24))
	=>
	(assert (terminal_fact (id t11) (name "Нед Фландерс")))
)
;r41 : s3, s13, s22 : t12
(defrule r41
	(fact (id s3))
	(fact (id s13))
	(fact (id s22))
	=>
	(assert (terminal_fact (id t12) (name "Клоун Красти")))
)
;r42 : f20, s7 : s5
(defrule r42
	(fact (id f18))
	(fact (id s7))
	=>
	(assert (fact (id s5) (name "Живёт по правилам.")))
)
;r43 : f3, s5, s9 : t13 
(defrule r43
	(fact (id f3))
	(fact (id s5))
	(fact (id s9))
	=>
	(assert (terminal_fact (id t13) (name "Сеймур Скиннер")))
)
;r44 : s6, s15 : s20
(defrule r44
	(fact (id s6))
	(fact (id s15))
	=>
	(assert (fact (id s20) (name "Слаборазвитый.")))
)
;r45 : f21, s15, s17, s20 : t14
(defrule r45
	(fact (id f19))
	(fact (id s15))
	(fact (id s17))
	(fact (id s20))
	=>
	(assert (terminal_fact (id t14) (name "Ральф Виггам")))
)

(defrule isOver18
	?answ  <- (answer-user (question "Возраст меньше 18 лет?") (answer ?a))
	(not (fact (id f20)))	
	(not (fact (id f15)))
=>
	(if (eq ?a "Да") then (assert (fact (id f15) (name "Возраст меньше 18 лет."))  ))
	(if (eq ?a "Нет") then (assert (fact (id f20) (name "Возраст больше 18 лет.")) ))
)

(defrule FoundTerminal
	(declare (salience 100))
	?term <- (terminal_fact (id ?id) (name ?nm))
	=>
	(assert (sendmessagehalt ?id ))
)

(deffacts questions
	(question-user (question "Возраст меньше 18 лет?") (answers "Да" "Нет"))
)


