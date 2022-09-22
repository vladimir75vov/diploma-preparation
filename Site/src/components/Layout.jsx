import {Header} from "./Header";
import {Footer} from "./Footer";
import {Outlet} from "react-router-dom";

const Layout = () => {
    return (
        <>
            <Header/>
            <main className="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
                <Outlet/>
            </main>
            <Footer/>
        </>
    )
}

export {Layout}