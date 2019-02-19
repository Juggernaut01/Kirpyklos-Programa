<?php



Route::set('', function() {

HomePage::CreateView('homepage');
});



Route::set('homepage', function() {

HomePage::CreateView('homepage');
});



Route::set('laiko_rezervacijos_forma', function() {

HomePage::CreateView('laiko_rezervacijos_forma');
});

Route::set('laiko_rezervacija', function() {

HomePage::CreateView('laiko_rezervacija');
});

Route::set('rezervacijos_tikrinimas', function() {

HomePage::CreateView('rezervacijos_tikrinimas');
});

Route::set('rezervacijos_paieskos_rezultatai', function() {

HomePage::CreateView('rezervacijos_paieskos_rezultatai');
});







 ?>
