<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use App\Proposal;
use App\Models\Post;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::withCount('posts')->paginate(10);

        return view('admin.users.index', compact('users'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if (auth()->user() == $user) {
            flash()->overlay("You can't delete yourself.");

            return redirect('/admin/users');
        }

        $user->delete();
        flash()->overlay('User deleted successfully.');

        return redirect('/admin/users');
    }
    public function role($id){
        $userRole = User::find($id);
        $userRole->role = ($userRole->role)? 0 : 1;
        $userRole->save();
        flash()->overlay('User Role Updated successfully.'); 
        return redirect('/admin/users');
    }
    public function accept($post,$id){
        $acceptTrip = Post::find($post);
        if($acceptTrip->user_id == auth()->user()->id){
            
       
        $acceptTrip->driver_id = $id;
        $acceptTrip->save();
        flash()->overlay('Trip Accepted successfully.'); 
        return redirect()->back(); 
    }else{
        flash()->overlay('Unauthorized request: You are not the owner of this post'); 
        return redirect()->back(); 
    }
    }
    public function proposal($id){
        $post = Post::find($id);
        $postDriverProposal = Proposal::where('post_id',$post->id)->first();
        if($post && $postDriverProposal){
            if($postDriverProposal->user_id == auth()->user()->id)
{
        flash()->overlay('You have already submited a proposal.'); 
    // $posts = Post::with(['user', 'category', 'tags', 'comments'])->latest()->paginate(10); 
       
        // return view('frontend/index',compact('posts'));
         return redirect()->back();
}        }
        return view('frontend/proposal', compact('post'));
    }
    public function createProposal(Request $request, $id){
        $request->validate([
            'price'=> 'required|numeric'
        ]);
        $post = Proposal::create([
            'user_id' => auth()->user()->id,
            'post_id' => $id,
            'price' => $request->price,
            'body' => $request->body,
            'availability' => $request->timing,
        ]);
        // $updatePost = Post::find($id);
        // $updatePost->driver_id = auth()->user()->id;
        // $updatePost->save();

        
        $posts = Post::with(['user', 'category', 'tags', 'comments'])->latest()->paginate(10);
        
        flash()->overlay('Proposal submited successfully.'); 
        return redirect('/');
        //   return redirect()->back();
    }
}