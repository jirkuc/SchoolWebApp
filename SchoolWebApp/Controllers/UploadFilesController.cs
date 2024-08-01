using Microsoft.AspNetCore.Mvc;
using SchoolWebApp.DTO;
using SchoolWebApp.Services;
using System.Xml;

namespace SchoolWebApp.Controllers;
public class UploadFilesController : Controller {
    private StudentService _studentService;

    public UploadFilesController(StudentService studentService) {
        _studentService = studentService;
    }

    [HttpPost]
    public async Task<IActionResult> UploadAsync(IFormFile fileToUpload) {
        if (fileToUpload.Length > 0) {
            string filePath = Path.GetFullPath(fileToUpload.Name);
            using (var stream = new FileStream(filePath, FileMode.Create)) {
                await fileToUpload.CopyToAsync(stream);
                stream.Close();
                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(filePath);
                XmlElement root = xmlDocument.DocumentElement;
                foreach (XmlNode node in root.SelectNodes("/Students/Student")) {
                    StudentDTO studentDTO = new StudentDTO() { 
                     FirstName = node.ChildNodes[0].InnerText,
                     LastName = node.ChildNodes[1].InnerText,
                     DateOfBirth = DateTime.Parse(node.ChildNodes[2].InnerText)
                    };
                    await _studentService.AddStudentAsync(studentDTO);
                }
            };

        }
        return RedirectToAction("Index", "Students");
    }
}
