import React from "react";

// Simple var handling of Todo items. Whether completed or not and/or delete/d.

const TodoItem = ({ name, completed, onDelete }) => <li><span style={{textDecoration: completed? 'line-through': 'none'}} onClick={onToggle}>{name}</span><span onClick={onDelete}> X </span></li>;

export default TodoItem;
