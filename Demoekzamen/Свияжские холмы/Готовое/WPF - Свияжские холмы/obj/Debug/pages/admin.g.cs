﻿#pragma checksum "..\..\..\pages\admin.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "CBBB08CEF85D09DDB4DBD5FD5B8412D2A7E780150E91DA86B59B4DC694AF17EF"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using WPF___Свияжские_холмы.pages;


namespace WPF___Свияжские_холмы.pages {
    
    
    /// <summary>
    /// admin
    /// </summary>
    public partial class admin : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 27 "..\..\..\pages\admin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonCreateReport;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\pages\admin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonLoginHistory;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\pages\admin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonMaterialСosts;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/WPF - Свияжские холмы;component/pages/admin.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\pages\admin.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.buttonCreateReport = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\..\pages\admin.xaml"
            this.buttonCreateReport.Click += new System.Windows.RoutedEventHandler(this.buttonCreateReport_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.buttonLoginHistory = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\pages\admin.xaml"
            this.buttonLoginHistory.Click += new System.Windows.RoutedEventHandler(this.buttonLoginHistory_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.buttonMaterialСosts = ((System.Windows.Controls.Button)(target));
            
            #line 29 "..\..\..\pages\admin.xaml"
            this.buttonMaterialСosts.Click += new System.Windows.RoutedEventHandler(this.buttonMaterialСosts_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

