using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Web.UI.WebControls;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using Amazon.Rekognition;
using Amazon.Rekognition.Model;
using System.Drawing;
using System.IO;

namespace WebApplication1
{
    public partial class Url : System.Web.UI.Page
    {
        private string inputUrl;
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack)
            {
                inputUrl = TextBox1.Text;
            }
        }
        
        public void Analyze_Click(object sender, EventArgs e)
        {
            
            //Navigate to the input Profile to Analyze
            Main.driver.Navigate().GoToUrl(inputUrl);
            //Click on the profile thumbnail pic
            IWebElement profilepic = Main.driver.FindElement(By.ClassName("profile-thumb"));
            profilepic.Click();

            //Download the profile Image

            ITakesScreenshot ssdriver = Main.driver as ITakesScreenshot;
            Screenshot screenshot = ssdriver.GetScreenshot();

            Screenshot tempImage = screenshot;
            
            //Saving the image to analyze
            tempImage.SaveAsFile(@"C:\Users\ramiz\source\repos\WebApplication1\WebApplication1\ProfilePics\image.png");

            string photo = @"C:\Users\ramiz\source\repos\WebApplication1\WebApplication1\ProfilePics\image.png";
            //Rekognition API
            AmazonRekognitionClient rekognitionClient = new AmazonRekognitionClient();

            RecognizeCelebritiesRequest recognizeCelebritiesRequest = new RecognizeCelebritiesRequest();

            Amazon.Rekognition.Model.Image img = new Amazon.Rekognition.Model.Image();
            byte[] data = null;
            try
            {
                using (FileStream fs = new FileStream(photo, FileMode.Open, FileAccess.Read))
                {
                    data = new byte[fs.Length];
                    fs.Read(data, 0, (int)fs.Length);
                }
            }
            catch (Exception)
            {
                WarningLabel.Text = ("Failed to load file " + photo);
                return;
            }

            img.Bytes = new MemoryStream(data);
            recognizeCelebritiesRequest.Image = img;

            WarningLabel.Text=("Looking for celebrities in image " + photo + "\n");

            RecognizeCelebritiesResponse recognizeCelebritiesResponse = rekognitionClient.RecognizeCelebrities(recognizeCelebritiesRequest);

            WarningLabel.Text=(recognizeCelebritiesResponse.CelebrityFaces.Count + " celebrity(s) were recognized.\n");
            foreach (Celebrity celebrity in recognizeCelebritiesResponse.CelebrityFaces)
            {
                WarningLabel.Text=("This profile is using a celebrity photo: " + celebrity.Name);
            }
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            //Cleanup the text box
            TextBox1.Text = "";
        }    
    }
}