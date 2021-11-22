import React from "react";

  const Item = (props) => {
    return (
      <div>
        <h1>Item Show</h1>
        <a href = {`/stores/${props.item.store_id}/items`}>Back</a>
        <p>item id: {props.item.id}</p>
        <p>store id: {props.item.store_id}</p>
        <div>
          <h3>{props.item.name}</h3>
          <p><b>Price: </b>{props.item.price}</p>
        </div>
        <code>{JSON.stringify(props)}</code>
      </div>
    );
  };

export default Item;