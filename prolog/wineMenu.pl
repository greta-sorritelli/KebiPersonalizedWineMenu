/* Countries */
italy(X) :- tuscany(X).
italy(X) :- piedmont(X).
italy(X) :- veneto(X).
france(X) :- burgundy(X).
france(X) :- provence(X).
argentina(X) :- mendoza(X).
australia(X) :- south_australia(X).
united_states(X) :- california(X).



/* Regions */
tuscany(masseto).
piedmont(fontanafredda_moscato_asti).
veneto(mionetto_prosecco_brut).
burgundy(bourgogne_pinot_noir).
burgundy(montrachet_grand_cru).
burgundy(coteau_de_vernon).
provence(whispering_angel_rose).
mendoza(clos_de_los_siete).
south_australia(the_pastoralist).
california(malene_rose).



/* Grapes */
merlot(masseto).
merlot(clos_de_los_siete).
cabernet_sauvignon(the_pastoralist).
cabernet_sauvignon(clos_de_los_siete).
malbec(clos_de_los_siete).
syrah(clos_de_los_siete).
syrah(whispering_angel_rose).
petit_verdot(clos_de_los_siete).
cabernet_franc(clos_de_los_siete).
pinot_noir(bourgogne_pinot_noir).
moscato(fontanafredda_moscato_asti).
glera(mionetto_prosecco_brut).
chardonnay(montrachet_grand_cru).
viognier(coteau_de_vernon).
grenache(malene_rose).
grenache(whispering_angel_rose).
rolle(whispering_angel_rose).
cinsault(whispering_angel_rose).
tibouren(whispering_angel_rose).


/* Tastes */
sweet(fontanafredda_moscato_asti).

acid(masseto).
acid(the_pastoralist).
acid(clos_de_los_siete).
acid(bourgogne_pinot_noir).
acid(fontanafredda_moscato_asti).
acid(mionetto_prosecco_brut).
acid(montrachet_grand_cru).
acid(coteau_de_vernon).
acid(malene_rose).
acid(whispering_angel_rose).

bitter(masseto).
bitter(the_pastoralist).
bitter(clos_de_los_siete).
bitter(bourgogne_pinot_noir).
bitter(montrachet_grand_cru).
bitter(coteau_de_vernon).

spice(masseto).
spice(the_pastoralist).
spice(clos_de_los_siete).
spice(bourgogne_pinot_noir).
spice(mionetto_prosecco_brut).
spice(montrachet_grand_cru).


/* Wines */
wine(masseto).
wine(clos_de_los_siete).
wine(the_pastoralist).
wine(bourgogne_pinot_noir).
wine(fontanafredda_moscato_asti).
wine(mionetto_prosecco_brut).
wine(montrachet_grand_cru).
wine(coteau_de_vernon).
wine(malene_rose).
wine(whispering_angel_rose).


/* Meals Pairing */
pairs(beef_bourguignon, masseto).
pairs(beef_bourguignon, the_pastoralist).
pairs(beef_bourguignon, clos_de_los_siete).
pairs(beef_bourguignon, bourgogne_pinot_noir).
pairs(beef_bourguignon, malene_rose).
pairs(beef_bourguignon, whispering_angel_rose).

pairs(fish_and_chips, masseto).
pairs(fish_and_chips, the_pastoralist).
pairs(fish_and_chips, clos_de_los_siete).
pairs(fish_and_chips, bourgogne_pinot_noir).
pairs(fish_and_chips, fontanafredda_moscato_asti).
pairs(fish_and_chips, mionetto_prosecco_brut).
pairs(fish_and_chips, montrachet_grand_cru).
pairs(fish_and_chips, coteau_de_vernon).
pairs(fish_and_chips, malene_rose).
pairs(fish_and_chips, whispering_angel_rose).

pairs(chicken_caesar_salad, masseto).
pairs(chicken_caesar_salad, the_pastoralist).
pairs(chicken_caesar_salad, clos_de_los_siete).
pairs(chicken_caesar_salad, bourgogne_pinot_noir).
pairs(chicken_caesar_salad, fontanafredda_moscato_asti).
pairs(chicken_caesar_salad, mionetto_prosecco_brut).
pairs(chicken_caesar_salad, montrachet_grand_cru).
pairs(chicken_caesar_salad, coteau_de_vernon).
pairs(chicken_caesar_salad, malene_rose).
pairs(chicken_caesar_salad, whispering_angel_rose).

pairs(ratatouille, masseto).
pairs(ratatouille, the_pastoralist).
pairs(ratatouille, clos_de_los_siete).
pairs(ratatouille, bourgogne_pinot_noir).
pairs(ratatouille, fontanafredda_moscato_asti).
pairs(ratatouille, mionetto_prosecco_brut).
pairs(ratatouille, montrachet_grand_cru).
pairs(ratatouille, coteau_de_vernon).
pairs(ratatouille, malene_rose).
pairs(ratatouille, whispering_angel_rose).

pairs(tiramisu, mionetto_prosecco_brut).
pairs(tiramisu, whispering_angel_rose).

pairs(fresh_fruit_salad, fontanafredda_moscato_asti).
pairs(fresh_fruit_salad, mionetto_prosecco_brut).
pairs(fresh_fruit_salad, montrachet_grand_cru).
pairs(fresh_fruit_salad, malene_rose).
pairs(fresh_fruit_salad, whispering_angel_rose).


/* Wines by country chosen */
country_chosen(Country, Wine) :-
    Country=:=1->  
    	italy(Wine);
    Country=:=2->  
    	france(Wine);
    Country=:=3->  
    	argentina(Wine);
    Country=:=4->  
    	australia(Wine);
    Country=:=5->  
    	united_states(Wine);
    Country=:=0->  
   		wine(Wine).

/* Wines by region chosen */
region_chosen(Region, Wine) :-
    Region=:=1->  
    	tuscany(Wine);
    Region=:=2->  
    	piedmont(Wine);
    Region=:=3->  
    	veneto(Wine);
    Region=:=4->  
    	burgundy(Wine);
    Region=:=5->  
    	provence(Wine);
	Region=:=6->  
    	mendoza(Wine);
	Region=:=7->  
    	south_australia(Wine);
	Region=:=8->  
    	california(Wine);
    Region=:=0 ->  
    	wine(Wine).

/* Wines by grape chosen */
grape_chosen(Grape, Wine) :-
    Grape=:=1 ->  
		merlot(Wine);
    Grape=:=2 ->  
		cabernet_sauvignon(Wine);
	Grape=:=3 ->  
   	 	malbec(Wine);
	Grape=:=4 ->  
    	syrah(Wine);
    Grape=:=5 ->  
		petit_verdot(Wine);
    Grape=:=6 ->  
		cabernet_franc(Wine);
    Grape=:=7 ->  
		pinot_noir(Wine);
    Grape=:=8 ->  
		moscato(Wine);
    Grape=:=9 ->  
		glera(Wine);
    Grape=:=10 ->  
		chardonnay(Wine);
    Grape=:=11 ->  
		viognier(Wine);
    Grape=:=12 ->  
		grenache(Wine);
    Grape=:=13 ->  
		rolle(Wine);
    Grape=:=14 ->  
		cinsault(Wine);
    Grape=:=15 ->  
		tibouren(Wine);
    Grape=:=0 ->  
    	wine(Wine).

/* Wines by grape excluded */
grape_excluded(Grape_to_exclude, Wine) :-
    Grape_to_exclude=:=0 ->  
    	wine(Wine);
    Grape_to_exclude=\=0 ->  
     not(grape_chosen(Grape_to_exclude, Wine)).
    

/* Wines by taste chosen */
taste_chosen(Taste, Wine) :-
    Taste=:=1 ->  
		sweet(Wine);
    Taste=:=2 ->  
		acid(Wine);
/*No wine insterted in the menu is salty*/
	/*Taste=:=3 ->  
   	 	salt(Wine);*/
	Taste=:=4 ->  
    	bitter(Wine);
    Taste=:=5 ->  
		spice(Wine);
    Taste=:=0 ->  
   		wine(Wine).
    
/* Wines by meal chosen */
meal_pairing(Meal, Wine) :-
    Meal=:=1 ->  
    	pairs(beef_bourguignon, Wine);
    Meal=:=2 ->  
    	pairs(fish_and_chips, Wine);
    Meal=:=3 ->  
    	pairs(chicken_caesar_salad, Wine);
    Meal=:=4 ->  
    	pairs(ratatouille, Wine);
    Meal=:=5 ->  
    	pairs(tiramisu, Wine);
    Meal=:=6 ->  
    	pairs(fresh_fruit_salad, Wine).

final_wine(Wine, Country, Region, Grape, Grape_to_exclude, Taste, Meal) :-
	country_chosen(Country, Wine),
    region_chosen(Region, Wine),
    grape_chosen(Grape, Wine),
    grape_excluded(Grape_to_exclude, Wine),
    taste_chosen(Taste, Wine),
    meal_pairing(Meal, Wine).


wineMenu(Wine) :-
    nl,
    write('WELCOME TO THE KEBI INTERNATIONAL RESTAURANT!'),nl,nl,
    write('Please help us show which wines are most suitable for you by providing information about your preferences'),
    nl, nl,
    write('Would you like the wine to come from a specific Country?'),nl,
    write('0. No'),nl,
    write('1. Italy'),nl,
    write('2. France'),nl,
    write('3. Argentina'),nl,
    write('4. Australia'),nl,
    write('5. United States'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Country), Country>=0, Country =<5,
    nl,
    
    nl,
    write('Would you like the wine to come from a specific Region?'),nl,
    write('0. No'),nl,
    write('1. Tuscany, Italy'),nl,
    write('2. Piedmont, Italy'),nl,
    write('3. Veneto, Italy'),nl,
    write('4. Burgundy, France'),nl,
    write('5. Provence, France'),nl,
    write('6. Mendoza, Argentina'),nl,
    write('7. South Australia, Australia'),nl,
    write('8. California, United States'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Region), Region>=0, Region=<8,
    nl,
    
    nl,
    write('Would you like the wine to come from a specific Grape?'),nl,
    write('0. No'),nl,
    write('1. Merlot'),nl,
    write('2. Cabernet Sauvignon'),nl,
    write('3. Malbec'),nl,
    write('4. Syrah'),nl,
    write('5. Petit Verdot'),nl,
    write('6. Cabernet Franc'),nl,
    write('7. Pinot Noir'),nl,
    write('8. Moscato'),nl,
    write('9. Glera'),nl,
    write('10. Chardonnay'),nl,
    write('11. Viognier'),nl,
    write('12. Grenache'),nl,
    write('13. Rolle'),nl,
    write('14. Cinsault'),nl,
    write('15. Tibouren'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Grape), Grape>=0, Grape=<15,
    nl,
    
    nl,
    write('Do you want to exclude a specific Grape?'),nl,
    write('0. No'),nl,
    write('1. Merlot'),nl,
    write('2. Cabernet Sauvignon'),nl,
    write('3. Malbec'),nl,
    write('4. Syrah'),nl,
    write('5. Petit Verdot'),nl,
    write('6. Cabernet Franc'),nl,
    write('7. Pinot Noir'),nl,
    write('8. Moscato'),nl,
    write('9. Glera'),nl,
    write('10. Chardonnay'),nl,
    write('11. Viognier'),nl,
    write('12. Grenache'),nl,
    write('13. Rolle'),nl,
    write('14. Cinsault'),nl,
    write('15. Tibouren'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Grape_to_exclude), Grape_to_exclude>=0, Grape_to_exclude=<15,
    nl,
    
    
    nl,
    write('Would you prefer a specific Taste?'),nl,
    write('0. No'),nl,
    write('1. Sweet'),nl,
    write('2. Acid'),nl,
    write('3. Salt'),nl,
    write('4. Bitter'),nl,
    write('5. Spice'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Taste), Taste>=0, Taste=<5,
    nl,
    
    nl,
    write('Now, choose your Meal.'),nl,
    write('1. Beef Bourguignon'),nl,
    write('2. Fish and Chips'),nl,
    write('3. Chicken Caesar Salad'),nl,
    write('4. Ratatouille'),nl,
    write('5. Tiramisu'),nl,
    write('6. Fresh Fruit Salad'),nl,nl,
    write('Enter your choice number below:'),nl,
    read(Meal), Meal>0, Meal=<6,
    nl,
    
    nl,
    write('Based on the preferences you provided, and the meal chosen, this is the list of wines that meet your needs:'),
    nl,nl,
    final_wine(Wine, Country, Region, Grape, Grape_to_exclude, Taste, Meal).
    
    
    
   
