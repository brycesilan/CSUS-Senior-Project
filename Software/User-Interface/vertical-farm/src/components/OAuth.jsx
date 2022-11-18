import React from 'react'

import {FcGoogle} from 'react-icons/fc'
export default function OAuth() {
  return (
    <button className='flex items-center justify-center w-full bg-red-600 text-white px-7 py-3 text-sm font-medium rounded-lg shadow-md hover:bg-red-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-red-800' type="submit">
        <FcGoogle className='text-2xl bg-white rounded-full mr-2'/>
        CONTINUE WITH GOOGLE
    </button>
  )
}
