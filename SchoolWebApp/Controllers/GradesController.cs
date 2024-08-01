using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using SchoolWebApp.DTO;
using SchoolWebApp.Services;

namespace SchoolWebApp.Controllers;
[Authorize]
public class GradesController : Controller {
    private GradeService _gradeService;

    public GradesController(GradeService gradeService) {
        _gradeService = gradeService;
    }

    [HttpGet]
    public async Task<IActionResult> Index() {
        var allGrades = await _gradeService.GetAllGradesViewModel();
        return View(allGrades);
    }
    [HttpGet]
    [Authorize(Roles = "Teacher, Admin")]
    public async Task<IActionResult> CreateAsync() {
        await FillSelectsAsync();
        return View();
    }

    [HttpPost]
    public async Task<IActionResult> CreateAsync(GradeDTO gradeDTO) {
        if (ModelState.IsValid) {
            await _gradeService.AddGradeAsync(gradeDTO);
            return RedirectToAction("Index");
        }
        else {
            return View();
        }
    }
    [HttpGet]
    [Authorize(Roles = "Teacher, Admin")]
    public async Task<IActionResult> UpdateAsync(int id) {
        var gradeToEdit = await _gradeService.GetByIdAsync(id);
        if (gradeToEdit == null) {
            return View("NotFound");
        }
        var gradeDto = _gradeService.ModelToDto(gradeToEdit);
        await FillSelectsAsync();
        return View(gradeDto);
    }
    [HttpPost]
    public async Task<IActionResult> UpdateAsync(GradeDTO gradeDTO, int id) {
        await _gradeService.UpdateAsync(id, gradeDTO);
        return RedirectToAction("Index");
    }


    //// It's going to be a Delete Method using HTTPGet which is not a particularly good idea, DON'T DO IT!!!!!!!!!!
    /// 
    //[HttpGet]  
    [HttpPost]
    [Authorize(Roles = "Teacher, Admin")]
    public async Task<IActionResult> DeleteAsync(int id) {
        await _gradeService.DeleteAsync(id);
        return RedirectToAction("Index");
    }


    private async Task FillSelectsAsync() {
        var gradesDropdownsData = await _gradeService.GetGradesDropdownsData();
        ViewBag.Students = new SelectList(gradesDropdownsData.Students, "Id", "StudentDesc");
        ViewBag.Subjects = new SelectList(gradesDropdownsData.Subjects, "Id", "Name");
    }
}
