import { getAuth, updateProfile } from "firebase/auth";
import { doc, updateDoc, getDoc } from "firebase/firestore";
import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { db } from "../firebase-config";

export default function Profile() {
  const auth = getAuth();
  const navigate = useNavigate();
  const SettingRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserSettings', 'Settings');

  const [changeData, setChangeData] = useState(true);
  const [Settings, setSettings] = useState([]);
  const [L1A, setL1A] = useState("");

  async function getSettings(){

    const document = await getDoc(SettingRef);
    const settingData = document.data();
    setL1A(settingData.Light1.Automation);
    //Settings = settingData;
    console.log(settingData);

  }
  useEffect(() => {
    getSettings();
  }, []);

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
        
        await updateDoc(SettingRef, {fullname: fullname});
        toast.success("Name changed Sucessfully");
      
    } catch(error) {
      toast.error("Could not change the name");
    }
  }
  

  return (
    <>
      <section className="max-w-7xl mx-auto flex justify-center items-center flex-col">
        <h1 className="text-3xl text-center mt-6 font-bold">My Profile</h1>
        <div className="w-full md:w-[50%] mt-6 px-3">
          {/* <form>
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
          </form> */}

          <div className="flex justify-between pb-6">

            <div className="flex text-lg">
              <div className="flex pr-6">
                <p className="pr-2 font-bold">Full name:</p>
                <p>{fullname}</p>
              </div>
              <div className="flex pr-6">
                <p className="pr-2 font-bold">Email:</p>
                <p>{email}</p>
              </div>
            </div>

            <div>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' onClick={onLogout}>Sign Out</button>
            </div>

          </div>
          

          

          <form className="pb-4">
            <p className="flex items-center pb-4">
                  Do you want to change the settings?
                  <span
                    onClick={() => {
                      changeData && onSubmit();
                      setChangeData((prevState) => !prevState);
                    }}
                    className="text-red-600 hover:text-red-700 transition ease-in-out duration-200 ml-1 cursor-pointer"
                  >
                    {changeData ? "Apply Change" : "Edit"}
                  </span>
            </p>

            <div className="grid grid-cols-5 gap-2 items-center">
              <div>Level</div>  
              <div>Controls</div>
              <div>Automation? 0=OFF / 1=ON</div>
              <div>Threshold / Start Time</div>
              <div>End TIme</div>

              <div>Level 1</div>
              <div></div><div></div><div></div><div></div>

              <div></div>
              <div>Light 1</div>
              <input type="text" id="L1A" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="08:00" onChange={onChange} disabled={!changeData} />
              <input type="text" value="18:00" onChange={onChange} disabled={!changeData} />

              <div></div>
              <div>Pump 1</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>

              <div></div>
              <div>Pump 2</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>

              <div>Level 2</div>
              <div></div><div></div><div></div><div></div>

              <div></div>
              <div>Light 2</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="08:00" onChange={onChange} disabled={!changeData} />
              <input type="text" value="18:00" onChange={onChange} disabled={!changeData} />

              <div></div>
              <div>Pump 3</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>

              <div></div>
              <div>Pump 4</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>

              <div>Other</div>
              <div></div><div></div><div></div><div></div>

              <div></div>
              <div>Heater</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>

              <div></div>
              <div>Fan</div>
              <input type="text" value="0" onChange={onChange} disabled={!changeData} />
              <input type="text" value="50" onChange={onChange} disabled={!changeData} />
              <div></div>
            </div>
          </form>
        </div>
      </section>
    </>
  );
}
