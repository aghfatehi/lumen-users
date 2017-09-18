<?php
 
namespace App\Http\Controllers;
 
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Hashing\BcryptHasher;

header('Content-Type: application/vnd.api+json');

class UsersController extends Controller{



//create new user
	
    public function add(Request $request){


        $this->validateRequest($request);
        $user = User::create([
                    'name'=>$request->get('name'),
                    'email' => $request->get('email'),
                    'password'=>app('hash')->make($request['password']),
                    'api_token'=>str_random(60)
                ]);
        return response()->json(['data' => "The user with id {$user->id} has been created"], 201);
    }
 
 //updates user
	
    
    public function edit(Request $request, $id){
        $user = User::find($id);
        
        
        if(!$user){
            return $this->error("The user with {$id} doesn't exist", 404);
        }
        
        $this->validateRequest($request);

        $user->name         = $request->get('name');
        $user->email        = $request->get('email');
        $user->password     = app('hash')->make($request->get('password'));

        $user->save();

        
        return $this->success("The user with with id {$user->id} has been updated", 200);
        //return response()->json(['data' => "The user with with id {$id} has been updated"], 200);
    
    }


//view user

    
public function view($id){
        $user = User::find($id);
        if(!$user){
            return $this->error("The user with {$id} doesn't exist", 404);
        }
        
        
        //return $this->success($user, 200);
        return response()->json(['data' => $user], 200);

    }
//delete user
	
    
    public function delete($id){
    
        $user = User::find($id);

        $j=json_encode($user);

        //return json_decode($j);

        if(!$user){
            return response()->json(['message' => "The user with {$id} doesn't exist"], 404);
        }


        $user->delete();
        
        return response()->json(['data' => "The user with with id {$id} has been deleted"], 200);
    }

//list user
	
    /*public function index(){
        $users = User::all();

        //return response()->json($users);

        return response()->json(['data' => $users], 200);
    }*/

    public function index() 
    {

        $users=User::all();
        
        $j=json_encode($users);

        return json_decode($j);

    }


    /*public function index(){
        $users = User::all();
        return $this->success($users, 200);
    }*/

    public function validateRequest(Request $request){
          $rules = [ 
            'email' => 'required|email|unique:users', 
            'password' => 'required|min:6',
            //'name'=>'required|name|unique:users',
            
        ];
        $this->validate($request, $rules);
    }
}
?>
