import React, {Suspense} from 'react';
import ReactDOM from 'react-dom/client';
import './index.scss';
import App from './App';
import {BrowserRouter} from "react-router-dom";
import './firebase'
import {FallbackLoading} from "./components/FallbackLoading";
import "./i18n"


const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Suspense fallback={<FallbackLoading/>}>
        <React.StrictMode>
            <BrowserRouter>
                <App/>
            </BrowserRouter>
        </React.StrictMode>
    </Suspense>
);