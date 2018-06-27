//custom route for fetching data  
var doctors_list = require('../data_access/doctors_list');
var symptom_checker = require('../data_access/symptom_checker');
  
module.exports = {  
    //set up route configuration that will be handle by express server  
    configure: function (app) {  
  
        app.get('/api/doctors_list', function (req,res) {
            doctors_list.book_appointment(req,res);
        });

        app.get('/api/doctors_list_filtered', function (req,res) {
            doctors_list.book_filtered_appointment(req,res);
        });
		
		app.post('/symptom_check', function (req,res) {
			symptom_checker.json_extract(req,res);
		});
  
    }  
};  