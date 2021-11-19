import React from "react";

  const items = (props) => {
    const renderItems = () => {
      return props.items.map((item) => {
        return (
          <div>
            <h1>{item.name}</h1>
            <p>{item.price}</p>
            <a href={`/stores/${props.store.id}/items/${item.id}`}></a>
          </div>
        )
      })
    }
  }

export default items;