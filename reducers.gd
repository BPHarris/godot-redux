extends Node

func game(state, action):
	var types = get_node('/root/action_types')
	var store = get_node('/root/store')
	
	if action['type'] == types.GAME_SET_START_TIME:
		var next_state = store.shallow_copy(state)
		next_state['start_time'] = action['time']
		return next_state
	return state

func player(state, action):
	var types = get_node('/root/action_types')
	var store = get_node('/root/store')
	
	if action['type'] == types.PLAYER_SET_NAME:
		var next_state = store.shallow_copy(state)
		next_state['name'] = action['name']
		return next_state
	if action['type'] == types.PLAYER_SET_HEALTH:
		var next_state = store.shallow_copy(state)
		next_state['health'] = action['health']
		return next_state
	return state

