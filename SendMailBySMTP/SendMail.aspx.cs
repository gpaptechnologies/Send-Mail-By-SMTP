using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace SendMailBySMTP
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            Send();
        }

        void Send()
        {
            try
            {
                string fromAddress = "youremail@gmail.com";
                string toAddress = txtToAddress.Text.Trim();
                string subject = txtSubject.Text.Trim();
                string body = txtBody.Text.Trim();

                if (string.IsNullOrEmpty(toAddress))
                {
                    txtToAddress.Focus();
                    lblMessage.Text = "Please enter TO address.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else if (string.IsNullOrEmpty(subject))
                {
                    txtSubject.Focus();
                    lblMessage.Text = "Please enter the subject.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else if (string.IsNullOrEmpty(body))
                {
                    txtBody.Focus();
                    lblMessage.Text = "Please enter the mail content.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    using (MailMessage mm = new MailMessage(fromAddress, toAddress))
                    {
                        mm.Subject = subject;
                        mm.Body = body;
                        mm.IsBodyHtml = false;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Send(mm);
                        ClearForm();
                        lblMessage.Text = "Mail sent Successfully...!";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        void ClearForm()
        {
            txtToAddress.Text = string.Empty;
            txtSubject.Text = string.Empty;
            txtBody.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }
    }
}