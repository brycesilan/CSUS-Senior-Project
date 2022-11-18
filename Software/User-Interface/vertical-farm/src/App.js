import {BrowserRouter as Router, Routes, Route} from "react-router-dom"
import Home from "./pages/Home"
import SignIn from "./pages/SignIn"
import SignUp from "./pages/SignUp"
import Readings from "./pages/Readings"
import Profile from "./pages/Profile"
import Graphs from "./pages/Graphs"
import ForgotPassword from "./pages/ForgotPassword"
function App() {
  return (
    <>
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/sign-in" element={<SignIn />} />
          <Route path="/sign-up" element={<SignUp />} />
          <Route path="/readings" element={<Readings />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="/graphs" element={<Graphs />} />
          <Route path="/forgot-password" element={<ForgotPassword />} />
        </Routes>
      </Router>
    </>
  );
}

export default App;
