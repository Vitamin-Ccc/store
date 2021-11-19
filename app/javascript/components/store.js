import React from "react";

const store = (props) =>{

  return (
    <div>
      <h1>{props.store.name}</h1>
      <p>Description: {props.store.description}</p>
      <p><a href = {'/'}>All Departments</a></p>
      <p><a href = {`/stores/${props.store.id}/edit`}>Edit</a></p>
      <p><a href = {`/stores/${props.store.id}`} data-method = "delete">Delete</a></p>
    </div>
  );
};

export default store; 