using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System;

namespace HePa.Core.Helpers
{
    public class EmailHelper
    {
        /// <summary>
        /// Send email async
        /// </summary>
        /// <param name="fromPersion">The display name of sender</param>
        /// <param name="mailToAddress">The destination email address</param>
        /// <param name="subject">The subject (title) of this email</param>
        /// <param name="body">The body of this email</param>
        /// <returns></returns>
        public static async Task<bool> SendEmailAsync(string fromPersion, string mailToAddress, string subject, string body)
        {
            try
            { 
                // Declare an email message to send
                MailMessage mail = new MailMessage();
                if (String.IsNullOrWhiteSpace(fromPersion))
                {
                    fromPersion = Constraint.DISPLAY_NAME;
                }
                mail.From = new MailAddress(Constraint.EMAIL_ADDRESS, fromPersion);
                mail.To.Add(mailToAddress);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                // Declare smtp server to send
                SmtpClient smtp = new SmtpClient(Constraint.SMTP_HOST, Constraint.SMTP_PORT);
                smtp.EnableSsl = Constraint.ENABLE_SSL;
                smtp.UseDefaultCredentials = Constraint.SMTP_DEFAULT_CREDENTIAL;
                smtp.Credentials = new NetworkCredential(Constraint.EMAIL_ADDRESS, Constraint.EMAIL_PASS);
                await smtp.SendMailAsync(mail);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("An error occurred when sending email.", ex);
            }
        }
    }
}
