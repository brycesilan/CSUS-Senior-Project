import { useState } from "react";
import { Link } from "react-router-dom";
import OAuth from "../components/OAuth";

export default function SignUp() {
  const [email, setEmail] = useState("");

  function onChange(e) {
    setEmail(e.target.value);
  }

  return (
    <section>
      <h1 className="text-3xl text-center mt-6 font-bold">Forgot Password</h1>
      <div className="flex flex-col justify-center items-center px-20 py-12 max-w-2sm mx-auto">
        <div>
          <img
            src="https://www.gstatic.com/devrel-devsite/prod/vefe830b4ddbb6fbf9f8f84fc45bd4079738c13cea1a4dbeb400bd711e695c305/firebase/images/lockup.svg"
            alt="logo"
            className="h-10"
          />
        </div>
        <div className="w-full md:w-[67%] lg:w-[40%] pt-5">
          <form>
            <input
              type="email"
              id="email"
              value={email}
              onChange={onChange}
              placeholder="Email Address"
              className="w-full px-4 py-2 mb-6 text-xl text-gray-700 bg-white border-gray-300 rounded-lg transition ease-in-out"
            />

            <div className="flex justify-between whitespace-nowrap text-sm sm:text-lg">
              <p className="mb-6">
                Don't have an account?
                <Link
                  to="/sign-up"
                  className="text-red-600 hover:text-red-800 ml-1"
                >
                  Register
                </Link>
              </p>
              <p>
                <Link
                  to="/sign-in"
                  className="text-blue-600 hover:text-blue-800"
                >
                  Sign In Instead
                </Link>
              </p>
            </div>

            <button
              className="w-full bg-blue-600 text-white px-7 py-3 text-sm font-medium rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800"
              type="submit"
            >
              SEND RESET PASSWORD
            </button>

            <div className="flex my-4 items-center before:border-t before:flex-1  before:border-gray-300 after:border-t after:flex-1  after:border-gray-300">
              <p className="text-center font-semibold mx-4">OR</p>
            </div>

            <OAuth />
          </form>
        </div>
      </div>
    </section>
  );
}
