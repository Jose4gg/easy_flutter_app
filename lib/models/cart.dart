enum Actions { increment }

int counterReducer(int state, dynamic action) {
  if (action == Actions.increment) {
    return state + 1;
  }
  return 1;
}
