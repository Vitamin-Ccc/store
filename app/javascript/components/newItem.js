import React from "react";

const newItem = (props) => {
  return (
    <div>
      <h1>New Item Form for {props.store.name}</h1>
      <form action = {`/stores/${props.store.id}/items`} method = "post">
        <p>Name:</p>
        <input name = "item[name]" />
        <p>Price:</p>
        <input name = "item[price]" />
        <button type = "submit">Add Item</button>
      </form>

      {JSON.stringify(props)}
    </div>
  );
};

export default newItem;