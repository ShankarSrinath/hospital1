using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailKit;
using MailKit.Net.Smtp;
using MimeKit;
namespace hospital1.Scripts
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            MimeMessage message = new MimeMessage();
            message.From.Add(new MailboxAddress("Shankar", "shar08042701@gmail.com"));
            message.To.Add(MailboxAddress.Parse("shaaarikk@gmail.com"));
            message.Subject = "Testing mail";
            message.Body = new TextPart("plain")
            {
                Text = @"hi da epudiiiiiiiiiiii"
            };
            String gmail = "shar08042701@gmail.com";
            string pwd = "Harshitha";
            SmtpClient client = new SmtpClient();
            try
            {
                client.Connect("smtp.gmail.com", 465, true);
                client.Authenticate(gmail, pwd);
                client.Send(message);
                Response.Write("SENT    //////");
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                client.Disconnect(true);
                client.Dispose();
            }
        }
    }
}