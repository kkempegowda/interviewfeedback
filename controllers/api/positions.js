'use strict';

var constants         = require('../../scripts/constants');
var dataService     = require(constants.paths.services + '/positions');
var logger     = require(constants.paths.scripts + '/logger');

var controller = {}

controller.getAll     = getAll;
controller.create     = create;

controller.getOneById = getOneById;
controller.updateById = updateById;
controller.deleteById = deleteById;

controller.getCandidatesById = getCandidatesById;

module.exports = controller;

function getAll(req,res){
  dataService.getAll()
    .then(function(data){
        if (data){
            res.send(data);
        }else {
            res.sendStatus(404);
        }
    })
    .catch(function (err){
        console.log("exception" + err);
        res.status(500).send(err);
    });
}

function getOneById(req,res){
  dataService.getOneById(req.params.id)
    .then(function(data){
        if (data){
            res.send(data);
        }else {
            res.sendStatus(404);
        }
    })
    .catch(function (err){
        console.log("exception" + err);
        res.status(500).send(err);
    });
}

function create(req, res) {
  dataService.create(req.body,res)
    .then(function (data) {
        if (data){
            res.send(data);
        }else {
            res.status(404).send("Doc not added");
        }
    })
    .catch(function (err) {
        console.log("cntrl create: err - " + err);
        res.status(500).send(err);
    });
}

function deleteById(req, res) {
  dataService.deleteById(req.params.id)
    .then(function () {
        res.status(200).send("Doc deleted successfully");
    })
    .catch(function (err) {
        console.log("controller delete err: " + err);
        res.status(500).send(err);
    });
}

function updateById(req, res) {
  dataService.updateById(req.params.id, req.body)
    .then(function () {
        res.status(200).send("Doc updated successfully");
    })
    .catch(function (err) {
        console.log(err);
        res.status(500).send(err);
    });
}

function getCandidatesById (req,res){
    dataService.getCandidatesById(req.params.id)
    .then(function(data){
        if (data){
            console.log("position id = " + req.params.id);
            console.log("Inside getCandidatesById in controller");
            res.send(data);
        } else {
            logger.Json("No Candidates Applied");
            res.status(404).send("No Candidates Applied");
        }
    })
    .catch(function (err){
        console.log("exception" + err);
        res.status(500).send(err);
    });
}