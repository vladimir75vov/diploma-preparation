import {Route, Routes, Navigate} from "react-router-dom";

import {Layout} from "./components/Layout";
import {Home} from "./pages/Home";
import {News} from "./pages/News";
import {Projects} from "./pages/Projects";
import {Contacts} from "./pages/Contacts";
import {JoinTheTeam} from "./pages/JoinTheTeam";
import {NotFound} from "./pages/NotFound";

import {SignIn} from "./pages/SignIn";
import {SignUp} from "./pages/SignUp";
import {ForgotPassword} from "./pages/ForgotPassword";


function App() {
    return (
        <>
            <Routes>
                <Route path="/" element={<Layout/>}>
                    <Route index element={<Navigate to="/home" replace/>}/>
                    <Route path="/home" element={<Home/>}/>
                    <Route path="/news" element={<News/>}/>
                    <Route path="/projects" element={<Projects/>}/>
                    <Route path="/contacts" element={<Contacts/>}/>
                    <Route path="/join-the-team" element={<JoinTheTeam/>}/>
                    <Route path="/*" element={<NotFound/>}/>

                    <Route path="/sign-in" element={<SignIn/>}/>
                    <Route path="/sign-up" element={<SignUp/>}/>
                    <Route path="/forgot-password" element={<ForgotPassword/>}/>
                </Route>
            </Routes>
        </>
    );
}

export default App;
