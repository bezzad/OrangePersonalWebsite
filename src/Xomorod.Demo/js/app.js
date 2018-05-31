var app = angular.module(
            'xomorodApp', // Name of our application
            [
                // Dependencies:
                'ngCookies',
                'hc.marked',
                'pascalprecht.translate' // angular-translate
            ]
         );

app.config(['$translateProvider', function ($translateProvider) {
    $translateProvider.useUrlLoader('/api/translate');
    $translateProvider.useSanitizeValueStrategy(null);
}]);

app.controller('productsController', [
    '$scope', '$http', function ($scope, $http) {
        $http.get('/api/apiaddress/?controller=products').success(function (response) {
            $http.get(response).success(function (response) {
                $scope.products = response;
                $scope.convertMarked = function (data) {
                    //document.getElementById('content').innerHTML = marked(response);
                    $scope.readme_markdown = marked(data.portfolio.Markdown);
                }
            }).error(function (error) {
                alert("an unexcepted error ocurred at products Controller" + "\n\n" + error.message);
            });

        }).error(function (error) {
            alert("an unexcepted error ocurred at Get Api Url" + "\n\n" + error.message);
        });

    }
]);

app.controller('bodyController', ['$scope', '$cookieStore', '$translate', function ($scope, $cookieStore, $translate) {

    function setLanguage(lang) {
        $cookieStore.put('Xomorod_LANGUAGE', lang);
        $translate.use(lang);
    }

    $scope.changeLanguage = setLanguage;

    function init() {
        var lang = $cookieStore.get('Xomorod_LANGUAGE') || 'en';
        setLanguage(lang);
    }

    init();

    ////
    //// Set model:
    $scope.isEnglish = ($cookieStore.get('Xomorod_LANGUAGE') === 'en');
    document.getElementById("chkLanguage").checked = $scope.isEnglish;

    // Add listener for isEnglish property changed event
    $scope.$watch(function (sc) {
        return sc.isEnglish;
    }, function (newVal, oldVal) {
        setLanguage(newVal ? "en" : "fa");
    });
}]);

function OnLanguageChanged(checked) {
    var sc = angular.element($("#chkLanguage")).scope();
    sc.$apply(function () {
        sc.isEnglish = checked;
    });
}