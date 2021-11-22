import React from "react";

  const Items = (props) => {
    const renderItems = () => {
      return props.items.map((item) => {
        return (
          <div>
            <h3>{item.name}</h3>
            <p>{item.price}</p>
            <a href={`/stores/${props.store.id}/items/${item.id}`}>Show</a>
            <a href={`/stores/${props.store.id}/items/${item.id}/edit`}>Edit Item</a>
            <a data-method = "delete" href={`/stores/${props.store.id}/items/${item.id}`}>Delete Item</a>
          </div>
        );
      });
    };
    return (
      <div>
        <h1>Department: {props.store.name}</h1>
        <p>Department id: {props.store.id}</p>

        <a href = {`/stores`}>Back to Departments</a>
        <a href = {`/stores/${props.store.id}/items/new`}>New Item</a>
        <hr />
        <h1>Items: </h1>
        {renderItems()}
        <p>{JSON.stringify(props)}</p>
      </div>
    );
  };

export default Items;