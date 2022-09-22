import {Route, Routes, Navigate} from "react-router-dom";

import {Layout} from "./components/Layout";
import {HomePage} from "./pages/HomePage";
import {NewsPage} from "./pages/NewsPage";
import {ProjectsPage} from "./pages/ProjectsPage";
import {ContactsPage} from "./pages/ContactsPage";
import {JoinTheTeamPage} from "./pages/JoinTheTeamPage";
import {NotFoundPage} from "./pages/NotFoundPage";

import {SignInPage} from "./pages/SignInPage";
import {SignUpPage} from "./pages/SignUpPage";
import {ForgotPasswordPage} from "./pages/ForgotPasswordPage";


function App() {
    return (
        <>
            <Routes>
                <Route path="/" element={<Layout/>}>
                    <Route index element={<Navigate to="/home" replace/>}/>
                    <Route path="/home" element={<HomePage/>}/>
                    <Route path="/news" element={<NewsPage/>}/>
                    <Route path="/projects" element={<ProjectsPage/>}/>
                    <Route path="/contacts" element={<ContactsPage/>}/>
                    <Route path="/join-the-team" element={<JoinTheTeamPage/>}/>
                    <Route path="/*" element={<NotFoundPage/>}/>

                    <Route path="/sign-in" element={<SignInPage/>}/>
                    <Route path="/sign-up" element={<SignUpPage/>}/>
                    <Route path="/forgot-password" element={<ForgotPasswordPage/>}/>
                </Route>
            </Routes>
        </>
    );
}

export default App;
