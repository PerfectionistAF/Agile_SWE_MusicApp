using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KWA.Controllers;
namespace KWA.Models
{
    public class Applicant
    {
        public string FirstName;
        public string MiddleName;
        public string LastName;
        public string Email;
        public string PhoneNumber;
        public string DOB;
        public bool Gender;
        public int NationalId;
        public string College;
        public string Faculty;
        public int YearOfStudy;
        public bool Disability;
        public string InstrumentChoice;
        public byte[] NationaIdImage;
        public byte[] CollegeIdImage;
        public byte[] PersonalImage;
    }
}