using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SchoolWebApp.DTO;
using SchoolWebApp.Services;

namespace SchoolWebApp.Controllers {
    [Authorize]
    public class SubjectsController : Controller {
        private SubjectService _subjectService;

        public SubjectsController(SubjectService subjectService) {
            _subjectService = subjectService;
        }

        public IActionResult Index() {
            IEnumerable<SubjectDTO> allSubjects = _subjectService.GetSubjects();
            return View(allSubjects);
        }
        [HttpGet]
        [Authorize(Roles = "Teacher, Admin")]
        public IActionResult Create() {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> CreateAsync(SubjectDTO subjectDTO) {
            if (ModelState.IsValid) {
                await _subjectService.AddSubjectAsync(subjectDTO);
                return RedirectToAction("Index");
            }
            else {
                return View();
            }
        }
        [HttpGet]
        [Authorize(Roles = "Teacher, Admin")]
        public async Task<IActionResult> UpdateAsync(int id) {
            var subjectToEdit = await _subjectService.GetByIdAsync(id);
            if (subjectToEdit == null) {
                return View("NotFound");
            }
            return View(subjectToEdit);
        }
        [HttpPost]
        public async Task<IActionResult> UpdateAsync(SubjectDTO subjectDTO, int id) {
            await _subjectService.UpdateSubjectAsync(subjectDTO, id);
            return RedirectToAction("Index");
        }
        [HttpPost]
        [Authorize(Roles = "Teacher, Admin")]
        public async Task<IActionResult> DeleteAsync(int id) {
            var subjectToDelete = await _subjectService.GetByIdAsync(id);
            if (subjectToDelete == null) {
                return View("NotFound");
            }
            await _subjectService.DeleteSubjectAsync(id);
            return RedirectToAction("Index");
        }
    }
}
