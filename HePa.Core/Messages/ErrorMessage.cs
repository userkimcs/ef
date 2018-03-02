using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Core.Messages
{
    public enum CreateUserMessage
    {
        EXIST_EMAIL, SUCCESSFUL_REGISTER
    };
    
    public enum UserLoginMessage
    {
        LOGIN_SUCCESSFULL, LOGIN_FAILURE
    };

    public enum ChangeAccountInfoMessage
    {
        SUCCESSSFULL, FAILURE
    };

    public enum ClassRegistrationMessage
    {
        SUCCESSSFULL, FAILURE
    };
}
