import { FcGoogle } from "react-icons/fc";
import { getAuth, GoogleAuthProvider, signInWithPopup } from "firebase/auth";
import { toast } from "react-toastify";
import { doc, getDoc, serverTimestamp, setDoc } from "firebase/firestore";
import { db } from "../firebase-config";
import { useNavigate } from "react-router-dom";

export default function OAuth() {
  const navigate = useNavigate();

  async function onGoogleClick() {
    try {
      const auth = getAuth();
      const provider = new GoogleAuthProvider();
      provider.setCustomParameters({prompt: 'select_account'}); //Prompt user to select the account they want to login with
      const result = await signInWithPopup(auth, provider);
      const user = result.user;

      //Check if user already exists
      const docRef = doc(db, "Users", user.uid);
      const docSnap = await getDoc(docRef);

      if(!docSnap.exists()) {
        await setDoc(docRef, {
          fullname: user.displayName,
          email: user.email,
          timestamp: serverTimestamp(),
        });
      }

      navigate("/"); //Navigate to home after successful login
    } catch(error) {
      toast.error("Sign Up with Google Unsuccessful!");
    }

  }

  return (
    <button type="button" onClick={onGoogleClick}
      className="flex items-center justify-center w-full bg-red-600 text-white px-7 py-3 text-sm font-medium rounded-lg shadow-md hover:bg-red-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-red-800"
    >
      <FcGoogle className="text-2xl bg-white rounded-full mr-2" />
      CONTINUE WITH GOOGLE
    </button>
  );
}
