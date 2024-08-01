using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SchoolWebApp.Models;
using SchoolWebApp.ViewModels;
using System.ComponentModel;

namespace SchoolWebApp.Controllers;
[Authorize(Roles ="Admin")]
public class UsersController : Controller {
    private UserManager<AppUser> _userManager;
    private IPasswordHasher<AppUser> _passwordHasher;
    private IPasswordValidator<AppUser> _passwordValidator;
    public UsersController(UserManager<AppUser> userManager, IPasswordHasher<AppUser> passwordHasher, IPasswordValidator<AppUser> passwordValidator) {
        _userManager = userManager;
        _passwordHasher = passwordHasher;
        _passwordValidator = passwordValidator;
    }

    [HttpGet]
    public IActionResult Index() {
        return View(_userManager.Users);
    }
    [HttpGet]
    public ActionResult Create() {
        return View();
    }
    [HttpPost]
    public async Task<IActionResult> CreateAsync(UserViewModel userViewModel) {
        if (ModelState.IsValid) {
            AppUser newUser = new AppUser {
                UserName = userViewModel.Name,
                Email = userViewModel.Email
            };
            IdentityResult result = await _userManager.CreateAsync(newUser, userViewModel.Password);
            if (result.Succeeded) {
                return RedirectToAction("Index");
            }
            else {
                //foreach (IdentityError error in result.Errors) {
                //    ModelState.AddModelError("", error.Description);
                //}
                ProcessErrors(result);
            }
        }
        return View(userViewModel);
    }
    [HttpGet]
    public async Task<IActionResult> UpdateAsync(string id) {
        AppUser userToUpdate = await _userManager.FindByIdAsync(id);
        if (userToUpdate == null) {
            return View("NotFound");
        }
        return View(userToUpdate);
    }
    [HttpPost]
    public async Task<IActionResult> UpdateAsync(string id, string email, string password) {
        AppUser userToUpdate = await _userManager.FindByIdAsync(id);
        if (userToUpdate != null) {
            IdentityResult validPassword;
            //if (!string.IsNullOrWhiteSpace(email)) {
            //    userToUpdate.Email = email;
            //}
            //else {
            //    ModelState.AddModelError("", "Email cannot be empty.");
            //}
            //if (!string.IsNullOrWhiteSpace(password)) {
            //        userToUpdate.PasswordHash = _passwordHasher.HashPassword(userToUpdate, password);
            //}
            //else {
            //    ModelState.AddModelError("", "Password cannot be empty.");
            //}
            if (!string.IsNullOrWhiteSpace(email) && !string.IsNullOrWhiteSpace(password)) {
                userToUpdate.Email = email;
                validPassword = await _passwordValidator.ValidateAsync(_userManager, userToUpdate, password);
                if (validPassword.Succeeded) {
                    userToUpdate.PasswordHash = _passwordHasher.HashPassword(userToUpdate, password);
                    IdentityResult identityResult = await _userManager.UpdateAsync(userToUpdate);
                    if (identityResult.Succeeded) {
                        return RedirectToAction("Index");
                    }
                    else {
                        ProcessErrors(identityResult);
                    }
                }
                else {
                    ProcessErrors(validPassword);
                }
            }
        }
        else {
            ModelState.AddModelError("", "User not found.");
        }
        return View(userToUpdate);
    }

    private void ProcessErrors(IdentityResult identityResult) {
        foreach (var error in identityResult.Errors) {
            ModelState.AddModelError("", error.Description);
        }
    }

    [HttpPost]
    public async Task<IActionResult> DeleteAsync(string id) {
        AppUser userToDelete = await _userManager.FindByIdAsync(id);
        if (userToDelete != null) {
            var result = await _userManager.DeleteAsync(userToDelete);
            if (result.Succeeded) {
                return RedirectToAction("Index");
            }
            else {
                ProcessErrors(result); ;
            }
        }
        else {
            ModelState.AddModelError("", "User not found.");
        }
        return View("Index", _userManager.Users);
    }
}
