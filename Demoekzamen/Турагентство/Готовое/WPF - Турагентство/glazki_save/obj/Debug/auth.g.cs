﻿#pragma checksum "..\..\auth.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7729C37B09767F106E4F5739018A6E649EF562081197116B58B11FAF476D935A"
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
using glazki_save;


namespace glazki_save {
    
    
    /// <summary>
    /// auth
    /// </summary>
    public partial class auth : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox login;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxbPassword;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox passwd;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TbxShowPass;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel SPanelSymbols;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Canvas CanvasNoise;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox CaptchatextBox;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\auth.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnUpCaptcha;
        
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
            System.Uri resourceLocater = new System.Uri("/glazki_save;component/auth.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\auth.xaml"
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
            this.login = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.TxbPassword = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.passwd = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 4:
            this.TbxShowPass = ((System.Windows.Controls.TextBlock)(target));
            
            #line 18 "..\..\auth.xaml"
            this.TbxShowPass.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.ShowPass_MouseDown);
            
            #line default
            #line hidden
            
            #line 18 "..\..\auth.xaml"
            this.TbxShowPass.MouseUp += new System.Windows.Input.MouseButtonEventHandler(this.ShowPass_MouseUp);
            
            #line default
            #line hidden
            return;
            case 5:
            this.SPanelSymbols = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 6:
            this.CanvasNoise = ((System.Windows.Controls.Canvas)(target));
            return;
            case 7:
            this.CaptchatextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.BtnUpCaptcha = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\auth.xaml"
            this.BtnUpCaptcha.Click += new System.Windows.RoutedEventHandler(this.BtnUpCaptcha_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 28 "..\..\auth.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Login);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

