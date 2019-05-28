const APIURL = "/api/todos"; // change depending on deployment environment

export async function getTodos() {
  return fetch(APIURL).then(resp => {
    if (!resp.ok) {
      if (resp.status >= 400 && resp.status < 500) {
        return resp.json().then(data => {
          let err = { errorMessage: data.message };
          throw err;
        });
      } else {
        let err = {
          errorMessage: "Server not responding. Try again later."
        };
        throw err;
      }
    }
    return resp.json();
  });
}

export async function createTodo(val) {
    return fetch(APIURL, {
        method: "post",
        headers: new Headers({
          "Content-Type": "application/json"
        }),
        body: JSON.stringify({ name: val })
      })
        .then(async resp => {
          if (!resp.ok) {
            if (resp.status >= 400 && resp.status < 500) {
              const data = await resp.json();
              let err = { errorMessage: data.message };
              throw err;
            } else {
              let err = {
                errorMessage: "Server not responding. Try again later."
              };
              throw err;
            }
          }
          return resp.json();
        })
}

export async function removeTodo(id) {
    const deleteURL = APIURL + id;
        return fetch(deleteURL, {
            method: "delete"
          })
            .then(async resp => {
              if (!resp.ok) {
                if (resp.status >= 400 && resp.status < 500) {
                  const data = await resp.json();
                  let err = { errorMessage: data.message };
                  throw err;
                } else {
                  let err = {
                    errorMessage: "Server not responding. Try again later."
                  };
                  throw err;
                }
              }
              return resp.json();
            })
}


export async function updateTodo(todo) {
    const updateURL = APIURL + todo_id;
    return fetch(updateURL, {
      method: "put",
      headers: new Headers({
        "Content-Type": "application/json"
      }),
      body: JSON.stringify({ completed: !todo.completed })
    })
      .then(async resp => {
        if (!resp.ok) {
          if (resp.status >= 400 && resp.status < 500) {
            const data = await resp.json();
            let err = { errorMessage: data.message };
            throw err;
          } else {
            let err = {
              errorMessage: "Server not responding. Try again later."
            };
            throw err;
          }
        }
        return resp.json();
      })
}