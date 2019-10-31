# godot-redux
Modification of https://github.com/glumpyfish/godot_redux updating it to work for Godot 3.

# Usage
The usage for this plugin is almost identical to its source. Any notable changes are listed below:
  - `state.get()` has been renamed `state.get_state()` to avoid conflict with `Node::get`
  - `action_types` and `store` must be instanciate in each method in `reducers`, or else they are not instanciated correctly (working on better solution)

# Plans
There are no plans for this plugin. At some point I wish to produce my own competitor from scratch as, at the time of writing, the original has not been updated in two-years.
