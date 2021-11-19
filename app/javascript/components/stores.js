import React from "react";

// A react component is just a function that return JSX - (html embed in js)
const Stores = (props) => {
  // we want to take this array of objects and convert it to an array of
  // jsx ideas if a method to use here
  const renderStores = () => {
    return props.stores.map((store) => {
      return (
        <div>
          <h1>{store.name}</h1>
          <p><a href = {`/stores/${store.id}`}>View</a></p>
          <p><a href = {`/stores/${store.id}/edit`}>Edit Department</a></p>
        </div>
      );
    });
  };

  return (
  <div>
    <a href = {`/stores/new`}>Create a New Department</a>
    <p>Departments Here: {renderStores()}</p>
  </div>
  );
};
export default Stores;