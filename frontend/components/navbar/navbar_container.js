import { connect } from "react-redux";
import Navbar from "./navbar";
import { deleteSession } from "../../actions/session_actions";

const mSP = (state, ownProps) => {
  return ({
    currentUserId: state.session,
    currentUser: state.entities.users[state.session],
    isAuthPath: (ownProps.location.pathname === "/login" || ownProps.location.pathname === "/signup"),
    isUploadPath: (ownProps.location.pathname === "/photos/upload"),
  })
}

const mDP = (dispatch) => {
  return ({
    logout: () => dispatch(deleteSession())
  })
}

export default connect(mSP, mDP)(Navbar);
