import {Route, Routes, Link} from "react-router-dom";

import {Home} from "./pages/Home";
import {News} from "./pages/News";
import {Projects} from "./pages/Projects";
import {Contacts} from "./pages/Contacts";
import {NotFound} from "./pages/NotFound";

import {Layout} from "./components/Layout";

function App() {
    return (
        <>
            <Routes>
                <Route path="/" element={<Layout/>}>
                    <Route index element={<Home/>}/>
                    <Route path="/news" element={<News/>}/>
                    <Route path="/projects" element={<Projects/>}/>
                    <Route path="/contacts" element={<Contacts/>}/>
                    <Route path="/*" element={<NotFound/>}/>
                </Route>
            </Routes>
        </>
    );
}

export default App;
