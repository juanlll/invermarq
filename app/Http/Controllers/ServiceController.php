<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
class ServiceController extends Controller
{

	public function index()
	{
		if(Voyager::can('browse_services')){
			$services = Service::paginate(10);
			return view('admin.service.index',['services'=>$services]);
											}
			else{ return redirect('/admin');}
	}

	public function create()
	{
		return view('admin.service.create');
	}


	public function store(Request $request)
	{
		$this->validate($request, [
			'name' => 'required|max:45|min:1',
			'description' => 'required|max:45|min:1',
			'image' => 'required|max:600|min:1',
			'amount' => 'required|max:600|min:1',
		]);

		$service = new Service;

		$service->name = $request->get('name');

		$service->description = $request->get('description'); 

		if (Input::hasFile('image'))
			{
				$file=Input::file('image');
				$file->move(public_path().'/imagenes/services/',$file->getClientOriginalName());
				$service->image=$file->getClientOriginalName();
			}
			$service->amount = $request->get('amount'); 

			$service->price = $request->get('price'); 

			$service->idCategory = $request->get('idCategory');

			$service->status = $request->get('status'); 

			$service->save();

			return redirect('/admin/services');
		}

		public function show($id)
		{
			$service = Service::findOrFail($id);
			return view('admin.service.show',['service'=>$service]);
		}


		public function edit($id)
		{
			$service = Service::findOrFail($id);
			return view('admin.service.edit',['service'=>$service]);
		}


		public function update(Request $request, $id)
		{
			$this->validate($request, [
				'name' => 'required|max:45|min:1',
				'description' => 'required|max:45|min:1',
				'image' => 'required|max:600|min:1',
				'amount' => 'required|max:600|min:1',
			]);

			$service = Service::findOrFail($id);

			$service->name = $request->get('name');

			$service->description = $request->get('description'); 

			if (Input::hasFile('image'))
				{
					$file=Input::file('image');
					$file->move(public_path().'/imagenes/services/',$file->getClientOriginalName());
					$service->image=$file->getClientOriginalName();
				}

				$service->amount = $request->get('amount'); 

				$service->price = $request->get('price'); 

				$service->idCategory = $request->get('idCategory');

				$service->status = $request->get('status');

				$service->update();

				return redirect('/admin/services');
			}


			public function destroy($id)
			{
				$service = Service::findOrFail($id);
				$service->delete();
				return redirect('/admin/services');
			}
		}
