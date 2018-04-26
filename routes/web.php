<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	$services = App\Service::all();
    return view('site.index',['services'=>$services]);
});

// Route::resource('admin/services','ServiceController');
// Route::resource('admin/products','ProductController');

Route::get('services',function(){
	$services = App\Service::paginate(6);
	return view('site.service.index',['services'=>$services]);
});

Route::get('/services/{id}',function($id){
	$service = App\Service::findOrFail($id);
	return view('site.service.show',['service'=>$service]);

});


Route::get('products',function(Illuminate\Http\Request $request){
	
 if ($request)
        {
        	$categories = App\Category::all();
            $query=trim($request->get('idcat'));
          
           
           $products = App\Product::where('idCategory','=',$query)
            ->paginate(7);
            return view('site.product.index',['products'=>$products,'categories'=>$categories]);
        }
	
});

Route::get('/products/{id}',function($id){
	$product = App\Product::findOrFail($id);
	return view('site.product.show',['product'=>$product]);
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
