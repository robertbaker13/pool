$(document).ready(function() {
  var bob = {id: 1}
  getRequest(employee_path(bob));
});

/////////OBJECTS////////////////////////////////////////////////////////////////////////////////////
var Employee = function(args) {
  this.id = args.id;
  this.nickname = args.nickname
}

var Dispersement = function(args) {
  this.id = args.id;
  this.employee = args.employee
}
/////////ACTIONS/////////////////////////////////////////////////////////////////////////////////////


/////////AJAX///////////////////////////////////////////////////////////////////////////////////////
var getRequest = function(url) {
  $.ajax({
    url: url,
    dataType: 'json'
  }).done(function(response) {
    console.log("done");
    console.log(response);
    display(response);
  }).fail(function(response) {
    console.log("fail");
    console.log(response);
  })
}

var postRequest = function(url, data) {
  $.ajax({
    url: url,
    method: 'post',
    data: data,
    dataType: 'json'
  }).done(function(response) {
    console.log("done");
    console.log(response);
    display(response);
  }).fail(function(response) {
    console.log("fail");
    console.log(response);
  })
}
var deleteRequest = function(url, data) {
  $.ajax({
    url: url,
    method: 'delete',
    data: data,
    dataType: 'json'
  }).done(function() {
    console.log("done");
    console.log(response);
    display(response);
  }).fail(function() {
    console.log("fail");
    console.log(response);
  })
}
/////////DISPLAY////////////////////////////////////////////////////////////////////////////////////
var display = function(text) {
  clear();
  $('.container').html(text)
}
var clear = function(){
  $('.container').empty();
}
/////////PATHS//////////////////////////////////////////////////////////////////////////////////////
var                  employees_path = function() {
                                      return "/employees" }
var               new_employee_path = function() {
                                      return employees_path() + "/new" }
var              edit_employee_path = function(employee) {
                                      return employees_path() + "/" + employee.id + "/new" }
var                   employee_path = function(employee) {
                                      return employees_path() + "/" + employee.id }
var     employee_dispersements_path = function(employee) {
                                      return employee_path(employee) + "/ dispersements" }
var  new_employee_dispersement_path = function(employee) {
                                      return employee_path(employee) + "/dispersements/new" }
var edit_employee_dispersement_path = function(employee, dispersement) {
                                      return employee_path(employee) + "/dispersements/" + dispersement.id + "/edit" }
var      employee_dispersement_path = function(employee, dispersement) {
                                      return employee_path(employee, dispersement) + "/dispersements/" + dispersement.id }
