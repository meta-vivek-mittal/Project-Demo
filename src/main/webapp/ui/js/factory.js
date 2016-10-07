landingPage.factory('userDetails', function() {
    var userFunctions = {};

    var user = [];

    userFunctions.setUser = function(data) {
        user.push(data);
    }

    userFunctions.getUser = function() {
        return user.pop();
    }

    return userFunctions;
});
