import {BrowserRouter as Router, Routes, Route} from "react-router-dom"

import SignIn from "./pages/SignIn"
import SignUp from "./pages/SignUp"
import Home from "./pages/Home"
import Profile from "./pages/Profile"
import Graphs from "./pages/Graphs"
import ForgotPassword from "./pages/ForgotPassword"
import Header from "./components/Header"

function App() {
  return (
    <>
      <Router>
        <Header/> 
        <Routes>
          <Route path="/sign-in" element={<SignIn />} />
          <Route path="/sign-up" element={<SignUp />} />
          <Route path="/" element={<Home />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="/graphs" element={<Graphs />} />
          <Route path="/forgot-password" element={<ForgotPassword />} />
        </Routes>
      </Router>
    </>
  );
}

export default App;
