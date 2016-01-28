var AppDispatcher = require('../dispatcher/dispatcher');
var Constants = require('../constants/loop_constants.js');
var LoopStore = require('../stores/loopStore.js');

var ApiActions = {
  receiveLoops: function(loops) {
    AppDispatcher.dispatch({
      actionType: Constants.LOOPS_RECEIVED,
      loops: loops
    });
  }
};

module.exports = ApiActions;
