import React from "react";

const storeEdit = (props) => {
  const { id, name, description } = props.store;
 
  return (
    <div>
      <h1>Edit Department</h1>
      <form action={`/stores/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name:</p>
        <input defaultValue={name} name="store[name]" />
        <p>Description:</p>
        <textarea defaultValue={description} name="store[description]" />
        <br />
        <button type="submit">update</button>
      </form>
      <p><a href = {'/'}>All Departments</a></p>
    </div>
  );
};
export default storeEdit;