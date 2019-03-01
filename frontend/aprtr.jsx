import React from 'react';
import ReactDOM from 'react-dom';
import Root from "./components/root"
import configureStore from "./store/store"
import { deleteSession } from "./utils/session"

// Test
import * as SessionAPI from "./utils/session"

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  let preloadedState = undefined;

  if (window.currentUser) {
    console.log(currentUser)
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
    delete window.currentUser;
  }

  let store = configureStore(preloadedState);
  window.getState = store.getState;
  window.deleteSession = deleteSession;
  ReactDOM.render(<Root store={store}/>, rootEl)
})


// Test
window.SessionAPI = SessionAPI

// preloadedState = {
//   session: window.currentUser.id,
//   entities: {
//     users: {
//       [window.currentUser.id]: window.currentUser
//     }
//   }
// };
