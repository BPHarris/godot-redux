# godot-redux
Modification of the Godot 2 plugin https://github.com/glumpyfish/godot_redux updating it to work for Godot 3 as an `addon`.

# Adding to a Project
1. If you don't already have an `addon` folder in your Godot project create one (`res://addons/`)
2. Submodule this repository into `res://addons/godot_redux`, from `res://` (project root) run:
    ```
    git add submodule https://github.com/BPHarris/godot-redux.git addons/godot_redux/
    ```
    NB: The addon folder must be `godot_redux` verbatim or Godot will not correctly register the plugin.
3. In your Godot project go to `Project > Project Settings... > Plugins` and set the plugin to active.
4. Follow the steps from the [Godot 2 version's](https://github.com/glumpyfish/godot_redux) 'Usage' section (add some autoloads).
5. Enjoy!

# Usage
The usage for this plugin is almost identical to its [source](https://github.com/glumpyfish/godot_redux). Any notable changes are listed below:
- See 'Adding to a Project'
- `state.get()` has been renamed `state.get_state()` to avoid conflict with `Node::get`

NB: In Godot 3 `action_types` and `store` must be retreived in each method in `reducers`, or else they are not instanciated correctly. I.e. in each `reducers` method:
    ```GDScript
    var types = get_node('/root/action_types')
	var store = get_node('/root/store')
    ```

# Plans
There are no plans for this plugin.
