import React from "react";
import { useLocation, useNavigate } from "react-router";

export default function Header() {
  const location = useLocation();
  const navigate = useNavigate();
  console.log(location);
  function pathMatchRoute(route) {
    if (route === location.pathname) {
      return true;
    }
  }

  return (
    <div className="bg-white border-b shadow-md sticky top-0 z-50">
      <header className="flex justify-between items-center px-3 max-w-6xl mx-auto">
        <div>
          <img
            src="https://www.gstatic.com/devrel-devsite/prod/vefe830b4ddbb6fbf9f8f84fc45bd4079738c13cea1a4dbeb400bd711e695c305/firebase/images/lockup.svg"
            alt="logo"
            className="h-10 cursor-pointer"
            onClick={() => navigate("/")}
          />
        </div>
        <div>
          <ul className="flex space-x-10">
            <li
              className={`cursor-pointer py-3 text-sm font-semibold text-gray-400 border-b-[3px] border-b-transparent ${
                pathMatchRoute("/") && "text-black border-b-green-500"
              }`}
              onClick={() => navigate("/")}
            >
              Home
            </li>
            <li
              className={`cursor-pointer py-3 text-sm font-semibold text-gray-400 border-b-[3px] border-b-transparent ${
                pathMatchRoute("/graphs") && "text-black border-b-green-500"
              }`}
              onClick={() => navigate("/graphs")}
            >
              Graphs
            </li>
            <li
              className={`cursor-pointer py-3 text-sm font-semibold text-gray-400 border-b-[3px] border-b-transparent ${
                pathMatchRoute("/sign-in") && "text-black border-b-green-500"
              }`}
              onClick={() => navigate("/sign-in")}
            >
              Sign in
            </li>
          </ul>
        </div>
      </header>
    </div>
  );
}
