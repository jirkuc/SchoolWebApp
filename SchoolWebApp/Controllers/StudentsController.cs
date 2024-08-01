using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SchoolWebApp.DTO;
using SchoolWebApp.Services;

namespace SchoolWebApp.Controllers {
    [Authorize]
    public class StudentsController : Controller {
        private StudentService _studentService;

        public StudentsController(StudentService studentService) {
            _studentService = studentService;
        }

        public IActionResult Index() {
            IEnumerable<StudentDTO> allStudents = _studentService.GetStudents();
            return View(allStudents);
        }
        [HttpGet]
        [Authorize(Roles = "Teacher, Admin")]
        public IActionResult Create() {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> CreateAsync(StudentDTO studentDTO) {
            if (ModelState.IsValid) {
                await _studentService.AddStudentAsync(studentDTO);
                return RedirectToAction("Index");
            }
            else {
                return View();
            }
        }
        [HttpGet]
        [Authorize(Roles = "Teacher, Admin")]
        public async Task<IActionResult> UpdateAsync(int id) {
            var studentToEdit = await _studentService.GetByIdAsync(id);
            if (studentToEdit == null) {
                return View("NotFound");
            }
            return View(studentToEdit);
        }
        [HttpPost]
        public async Task<IActionResult> UpdateAsync(StudentDTO studentDTO, int id) {
            await _studentService.UpdateStudentAsync(studentDTO, id);
            return RedirectToAction("Index");
        }
        [HttpPost]
        [Authorize(Roles = "Teacher, Admin")]
        public async Task<IActionResult> DeleteAsync(int id) {
            var studentToDelete = await _studentService.GetByIdAsync(id);
            if (studentToDelete == null) {
                return View("NotFound");
            }
            await _studentService.DeleteStudentAsync(id);
            return RedirectToAction("Index");
        }
    }
}
