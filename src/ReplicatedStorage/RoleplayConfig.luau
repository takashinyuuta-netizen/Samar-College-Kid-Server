--[[ RoleplayConfig — be a Student, Teacher, Instructor, Employee or campus Staff.
  Saved player attributes (numbers): RP_Role (1 = Student), RP_1, RP_2, RP_3 (picked option per row, 1-based).
  StaffRole is written to the player's "Role" attribute, which StaffAccess reads (staff-only gates, ID scanners).
  To add or rename options, just edit the lists below. ]]
local RS = game:GetService("ReplicatedStorage")
local LevelConfig = require(RS:WaitForChild("LevelConfig"))

local M = {}

-- 🧸 KID SERVER roles: Pupil, Teacher, School Worker, Campus Helper (Kindergarten to Grade 6 only)
local GRADES = {}
for i = 1, #LevelConfig.Levels do table.insert(GRADES, LevelConfig.name(i)) end -- Kindergarten … Grade 6

M.Roles = {
	{ Id = "Student", Icon = "🎒", Name = "Pupil", Color = Color3.fromRGB(60, 170, 90), Desc = "You're a pupil — your grade level shows in your title.", Options = {} },
	{ Id = "Teacher", Icon = "👩‍🏫", Name = "Teacher", StaffRole = "Teacher", Color = Color3.fromRGB(70, 140, 230),
		Desc = "Teach Kindergarten to Grade 6.",
		Options = {
			{ Label = "Grade level assigned", List = GRADES },
			{ Label = "Subject", List = { "Mathematics", "English", "Filipino", "Science", "Araling Panlipunan", "MAPEH", "GMRC / Values", "Reading", "Mother Tongue", "EPP / TLE", "Computer", "Homeroom" } },
			{ Label = "Duty / role", List = { "Class Adviser", "Subject Teacher", "Reading Teacher", "Guidance Teacher", "Club Moderator", "Sports Coach", "Librarian", "Event Helper" } },
		} },
	{ Id = "Employee", Icon = "💼", Name = "School Worker", StaffRole = "Employee", Color = Color3.fromRGB(150, 90, 200),
		Desc = "Help out in one of the school offices.",
		Options = {
			{ Label = "Office", List = { "Principal's Office", "Library", "Clinic", "Guidance Office", "Registrar", "Canteen", "Computer Room" } },
			{ Label = "Duty / role", List = { "Front Desk", "Helper", "Nurse", "Librarian", "Photographer", "Event Helper", "Office Head" } },
		} },
	{ Id = "Staff", Icon = "🧹", Name = "Campus Helper", StaffRole = "Staff", Color = Color3.fromRGB(200, 110, 60),
		Desc = "Keep the school clean, safe and happy.",
		Options = {
			{ Label = "Job", List = { "Cleaning Helper", "School Guard", "Gardener", "Canteen Helper", "Library Helper", "Stage Crew", "Crossing Guard" } },
			{ Label = "Area assigned", List = { "Whole Campus", "1st Floor", "2nd Floor", "Canteen", "Library", "Playground / Court", "Main Gate" } },
		} },
}

function M.role(i) return M.Roles[i or 1] or M.Roles[1] end
function M.pick(role, row, idx)
	local opt = role.Options[row]
	if not opt then return nil end
	return opt.List[math.clamp(idx or 1, 1, #opt.List)]
end
-- title for the leaderboard / ID scanners (nil = use the student title)
function M.titleFor(roleIdx, a, b, c)
	local r = M.role(roleIdx)
	if r.Id == "Student" then return nil end
	if r.Id == "Teacher" then return ("Teacher • %s • %s"):format(M.pick(r, 1, a), M.pick(r, 2, b)) end
	if r.Id == "Employee" then return ("%s • %s"):format(M.pick(r, 1, a), M.pick(r, 2, b)) end
	if r.Id == "Staff" then return ("%s • %s"):format(M.pick(r, 1, a), M.pick(r, 2, b)) end
end
-- two lines for the overhead tag
function M.tagFor(roleIdx, a, b, c)
	local r = M.role(roleIdx)
	if r.Id == "Student" then return nil end
	if r.Id == "Teacher" or r.Id == "Instructor" then
		return ("%s %s • %s"):format(r.Icon, r.Name, M.pick(r, 3, c)), ("%s · %s"):format(M.pick(r, 1, a), M.pick(r, 2, b)), r.Color
	end
	if r.Id == "Employee" then return ("%s %s"):format(r.Icon, M.pick(r, 1, a)), M.pick(r, 2, b), r.Color end
	return ("%s %s"):format(r.Icon, M.pick(r, 1, a)), "Area: " .. M.pick(r, 2, b), r.Color
end

return M
