import React from "react";

// A react component is just a function that return JSX - (html embed in js)
const newStores = () => {
  return (
    <div>
      <h1>Create a New Department</h1>
      <form action="/stores" method="post">
        <p>Name</p>
        <input name="store[name]" />

        <p>Description</p>
        <input name="store[description]" />

        <button type="submit">Create</button>
      </form>
      <a href = {'/'}>All Departments</a>
    </div>
  );
};
export default newStores;