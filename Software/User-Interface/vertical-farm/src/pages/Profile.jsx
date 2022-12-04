import { getAuth, updateProfile } from "firebase/auth";
import { doc, updateDoc } from "firebase/firestore";
import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { db } from "../firebase-config";

export default function Profile() {
  const auth = getAuth();
  const navigate = useNavigate();
  const [changeName, setChangeName] = useState(false);

  const [formData, setFormData] = useState({
    fullname: auth.currentUser.displayName,
    email: auth.currentUser.email,
  });

  const { fullname, email } = formData;

  function onLogout() {
    auth.signOut();
    navigate("/sign-in");
  }

  function onChange(e) {
    setFormData((prevState) => ({
      ...prevState,
      [e.target.id]: e.target.value,
    }));
  }

  async function onSubmit() {
    try {
      if(auth.currentUser.displayName !== fullname) {
        //Update name in firebase auth
        await updateProfile(auth.currentUser, {
          displayName: fullname,
        });

        //update name in firestore
        const docRef = doc(db, "Users", auth.currentUser.uid);
        await updateDoc(docRef, {fullname: fullname});
        toast.success("Name changed Sucessfully");
      }
    } catch(error) {
      toast.error("Could not change the name");
    }
  }

  return (
    <>
      <section className="max-w-6xl mx-auto flex justify-center items-center flex-col">
        <h1 className="text-3xl text-center mt-6 font-bold">My Profile</h1>
        <div className="w-full md:w-[50%] mt-6 px-3">
          <form>
            <input
              type="text"
              id="fullname"
              value={fullname}
              disabled={!changeName}
              onChange={onChange}
              className={`w-full px-4 py-2 text-xl text-gray-700 bg-white border border-gray-300 rounded transition ease-in-out mb-6 ${changeName && "bg-red-200 focus:bg-red-200"}`}
            />

            <input
              type="email"
              id="email"
              value={email}
              disabled
              className="w-full px-4 py-2 text-xl text-gray-700 bg-white border border-gray-300 rounded transition ease-in-out mb-6"
            />

            <div className="flex justify-between whitespace-nowrap text-sm sm:text-lg">
              <p className="flex items-center">
                Do you want to change your name?
                <span
                  onClick={() => {
                    changeName && onSubmit();
                    setChangeName((prevState) => !prevState);
                  }}
                  className="text-red-600 hover:text-red-700 transition ease-in-out duration-200 ml-1 cursor-pointer"
                >
                  {changeName ? "Apply Change" : "Edit"}
                </span>
              </p>
              <p
                onClick={onLogout}
                className="text-blue-600 hover:text-blue-800 transition ease-in-out duration-200 ml-1 cursor-pointer"
              >
                Sign Out
              </p>
            </div>
          </form>
        </div>
      </section>
    </>
  );
}
