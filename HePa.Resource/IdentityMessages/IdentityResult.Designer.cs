﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HePa.Resource.IdentityMessages {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    public class IdentityResult {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal IdentityResult() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("HePa.Resource.IdentityMessages.IdentityResult", typeof(IdentityResult).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Thư này đã hết hạn.
        /// </summary>
        public static string AccessExpiredDate {
            get {
                return ResourceManager.GetString("AccessExpiredDate", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Xem kìa, email này không tồn tại trong hệ thống, bạn xem lại nhé!.
        /// </summary>
        public static string EmailNotFound {
            get {
                return ResourceManager.GetString("EmailNotFound", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Địa chỉ email này đã được đăng ký. Nếu email này là của bạn, hãy sử dụng chức năng quên mật khẩu..
        /// </summary>
        public static string ExistEmailAddress {
            get {
                return ResourceManager.GetString("ExistEmailAddress", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Địa chỉ email này đã được sử dụng để đăng nhập bằng @provider. Hãy đăng nhập bằng @provider..
        /// </summary>
        public static string ExistExternalEmailAddress {
            get {
                return ResourceManager.GetString("ExistExternalEmailAddress", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Email hoặc mật khẩu đăng nhập không đúng.
        /// </summary>
        public static string NotExistEmailAdress {
            get {
                return ResourceManager.GetString("NotExistEmailAdress", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Thư yêu cầu khôi phục mật khẩu.
        /// </summary>
        public static string PasswordRecoveryRequestLetter {
            get {
                return ResourceManager.GetString("PasswordRecoveryRequestLetter", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Hướng dẫn khôi phục mật khẩu đã được gửi đến địa chỉ email của bạn. Nếu không nhận được email gửi tới hãy thử kiểm tra hộp thư rác..
        /// </summary>
        public static string SendEmailSuccessfully {
            get {
                return ResourceManager.GetString("SendEmailSuccessfully", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Email hoặc mật khẩu đăng nhập không đúng.
        /// </summary>
        public static string WrongPassword {
            get {
                return ResourceManager.GetString("WrongPassword", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Rất tiếc, liên kết này không đúng hoặc đã hết hạn..
        /// </summary>
        public static string WrongResetPasswordUrl {
            get {
                return ResourceManager.GetString("WrongResetPasswordUrl", resourceCulture);
            }
        }
    }
}
