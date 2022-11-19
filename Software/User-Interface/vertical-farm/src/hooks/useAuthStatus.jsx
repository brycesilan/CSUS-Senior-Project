import { getAuth, onAuthStateChanged } from "firebase/auth";
import { useState, useEffect } from "react";

export function useAuthStatus() {
    const [loggedIn, setLoggedIn] = useState(false); 
    const [checkStatus, setCheckingStatus] = useState(true);

    useEffect(() => {
        const auth = getAuth();
        onAuthStateChanged(auth, (user) => {
            if(user) {
                setLoggedIn(true);
            }
            setCheckingStatus(false);
        });
    }, []);
    return { loggedIn, checkStatus }

}
