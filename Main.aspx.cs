using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
namespace WebApplication1
{
    public partial class Main : Page 
    {
        
        public static ChromeOptions options = new ChromeOptions();
        public static ChromeDriver driver = new ChromeDriver(options);
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //Setting up chrome profile
            options.AddArguments(@"user-data-dir=" + "C:\\Users\\ramiz\\OneDrive\\Desktop\\dist" + "\\profile");

            //Loading the Same Profile For Login Purposes
            options.AddArguments(@"user-date-dir" + "C:\\Users\\ramiz\\AppData\\Local\\Google\\Chrome\\User Data");
            options.AddArguments("--no-startup-window");

            //Login
            driver.Navigate().GoToUrl("https://www.okcupid.com/login");
            IWebElement email = driver.FindElement(By.CssSelector("#root > span > div > div > div.login2017-container > span > div > form > div.login2017-fields > div:nth-child(1) > span.oknf-typable-wrapper.oknf-typable-wrapper--text > input"));

            //Accessing email value from the html form and sending input
            email.SendKeys(Request.Form["email"]);

            //Send Password
            IWebElement password = driver.FindElement(By.CssSelector("#root > span > div > div > div.login2017-container > span > div > form > div.login2017-fields > div:nth-child(2) > span.oknf-typable-wrapper.oknf-typable-wrapper--password > input"));
            password.SendKeys(Request.Form["pass"]);
            System.Threading.Thread.Sleep(2500);

            //Click On Login
            IWebElement login = driver.FindElement(By.CssSelector("#root > span > div > div > div.login2017-container > span > div > form > div.login2017-actions > input"));
            login.Click();
            
            //Wait for automation process
            System.Threading.Thread.Sleep(2500);
            
            //Validate Login Session
            try
            {
                IWebElement userExist = driver.FindElement(By.CssSelector("#navigation > div > span:nth-child(2) > div.profile-button-container > button > div > div > div"));
                Label1.Text = "Login Success!";
                Response.Redirect("http://localhost:63581/Url");
            }
            catch
            {
                Label1.Text = "Login Failed!";

            }
        }
    }
}