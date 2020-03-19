const db = require("../dbconfig")
module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove,
    updateStep
}

function find (){
    return db("schemes")
}

function findById(id){
    return db("schemes")
        .where({ id })
        .first()
}

function findSteps(id){
    return db("steps")
        .where({ scheme_id: id })
        .orderBy("step_number")
}

function add(schemeData){
    return db("schemes")
        .insert(schemeData)
}

function addStep(stepData, id){
    return db("steps")
        .insert(stepData, id)
}

function update(changes, id){
    return db("schemes")
        .where({ id })
        .update(changes)
}

function remove(id){
    return db("schemes")
        .where({ id })
        .del()
}

function updateStep(id, id2, step){
    return db("steps")
        .where({ scheme_id: id, id: id2 })
        .update(step)
}