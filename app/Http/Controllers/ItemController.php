<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ItemController extends Controller
{
    // for user role
    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required|string|max:255',
            'description' => 'required|string',
        ]);

        $item = Item::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'description' => $request->description,
            'status' => 'pending', // Default status
        ]);

        return response()->json($item, 201);
    }
    public function index() {
        $items = Auth::user()->items;
        return response()->json($items);
    }
    public function update(Request $request, $id) {
        $item = Item::where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        $this->validate($request, [
            'title' => 'sometimes|string|max:255',
            'description' => 'sometimes|string',
        ]);

        $item->update($request->only('title', 'description'));
        return response()->json($item);
    }
    public function destroy($id) {
        $item = Item::where('id', $id)->where('user_id', Auth::id())->firstOrFail();
        $item->delete();
        return response()->json(['message' => 'Item deleted']);
    }
     // Admin: section for items
     public function unapprovedItems() {
        $items = Item::where('status', 'pending')->get();
        return response()->json($items);
    }
    public function approve($id) {
        $item = Item::findOrFail($id);
        $item->update(['status' => 'approved']);
        return response()->json($item);
    }
    public function reject($id) {
        $item = Item::findOrFail($id);
        $item->update(['status' => 'rejected']);
        return response()->json($item);
    }
    public function adminDestroy($id) {
        $item = Item::findOrFail($id);
        $item->delete();
        return response()->json(['message' => 'Item deleted by admin']);
    }
}
