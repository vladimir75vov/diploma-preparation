const SignIn = () => {
    return (
        <>
            <div className="flex justify-center w-full">
                <div
                    className="flex flex-col justify-center items-center md:flex-row rounded-xl max-w-7xl m-2">
                    <div className="w-full">
                        <div className="flex flex-col justify-center items-center mt-10 md:mt-14 space-y-6 md:space-y-8">
                            <div className="">
                                <input type="text" placeholder="User Name"
                                       className=" bg-gray-100 rounded-lg px-5 py-2 focus:border border-red-600 focus:outline-none text-black placeholder:text-gray-600 placeholder:opacity-50 font-semibold md:w-72 "/>
                            </div>
                            <div className="">
                                <input type="password" placeholder="Password"
                                       className=" bg-gray-100 rounded-lg px-5 py-2 focus:border border-red-600 focus:outline-none text-black placeholder:text-gray-600 placeholder:opacity-50 font-semibold md:w-72 "/>
                            </div>
                            <div className="flex space-x-2 -ml-28 md:-ml-40 lg:-ml-52">
                                <input className="" type="checkbox" id="checkbox" name="checkbox"/>
                                <h3 className="text-sm font-semibold text-gray-400 -mt-1 cursor-pointer">Remember Me</h3>
                            </div>
                        </div>
                        <div className="text-center mt-7">
                            <button
                                className="uppercase px-24 py-2 rounded-md text-white bg-red-500 hover:bg-red-600  font-medium ">login
                            </button>
                        </div>
                        <div className="text-center my-6">
                            <a href="/forgot-password" className="text-sm font-medium text-gray-400 hover:text-red-500 hover:underline">Forgot
                                Password ?</a>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export {SignIn}