<?php 

 session_start();
include 'admin/db_connect.php'; 

 ?>
?>
<style>
    .masthead{
        min-height: 23vh !important;
        height: 23vh !important;
    }
     .masthead:before{
        min-height: 23vh !important;
        height: 23vh !important;
    }
    img#cimg{
        max-height: 10vh;
        max-width: 6vw;
    }
</style>
        <header class="masthead">
            <div class="container-fluid h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end mb-4 page-title">
                    	<h3 class="text-white">Manage Account</h3>
                        <hr class="divider my-4" />

                    <div class="col-md-12 mb-2 justify-content-center">
                    </div>                        
                    </div>
                    
                </div>
            </div>
        </header>
            <div class="container mt-3 pt-2">
               <div class="col-lg-12">
                   <div class="card mb-4">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="col-md-12">
                                    <form action="" id="update_account">
                                        <div class="row form-group">
                                        <div class="col-md-4">
                                                <label for="" class="control-label">First Name</label>
                                                <input type="text" class="form-control" name="firstname" value="<?php echo $_SESSION['bio']['firstname'] ?>" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Middle Name</label>
                                                <input type="text" class="form-control" name="middlename" value="<?php echo $_SESSION['bio']['middlename'] ?>" >
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Last Name</label>
                                                <input type="text" class="form-control" name="lastname" value="<?php echo $_SESSION['bio']['lastname'] ?>" required>
                                            </div>
                                            
                                            
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Gender</label>
                                                <select class="custom-select" name="gender" required>
                                                    <option <?php echo $_SESSION['bio']['gender'] =='Male' ? 'selected' : '' ?>>Male</option>
                                                    <option <?php echo $_SESSION['bio']['gender'] =='Female' ? 'selected' : '' ?>>Female</option>
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Batch</label>
                                                <input type="input" class="form-control datepickerY" name="batch" value="<?php echo $_SESSION['bio']['batch'] ?>" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Course Graduated</label>
                                                <select class="custom-select select2" name="course_id" required>
                                                    <option></option>
                                                    <?php 
                                                    $course = $conn->query("SELECT * FROM courses order by course asc");
                                                    while($row=$course->fetch_assoc()):
                                                    ?>
                                                        <option value="<?php echo $row['id'] ?>"  <?php echo $_SESSION['bio']['course_id'] ==$row['id'] ? 'selected' : '' ?>><?php echo $row['course'] ?></option>
                                                    <?php endwhile; ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-md-5">
                                                <label for="" class="control-label">Skills</label>
                                                <textarea name="skills" id="mainSkills" cols="30" rows="3" class="form-control" readonly required><?php echo $_SESSION['bio']['skills'] ?></textarea>
                                            </div>
                                            <div class="col-md-5">
                                                <label for="" class="control-label">Image</label>
                                                <input type="file" class="form-control" name="img" onchange="displayImg(this,$(this))">
                                                <img src="admin/assets/uploads/<?php echo $_SESSION['bio']['avatar'] ?>" alt="" id="cimg">

                                            </div>  
                                            <div class="col-md-10">
<!-- <label for="" class="control-label">IT Skills</label><br> -->
<div class="row form-group">
<div class="col-md-10">
<label for="" class="control-label">IT Skills</label><br>
<div class="container">
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Python" onchange="updateSkills()"> Python</label>
<label class="col"><input type="checkbox" class="it_skills" value="Java" onchange="updateSkills()"> Java</label>
<label class="col"><input type="checkbox" class="it_skills" value="C++" onchange="updateSkills()"> C++</label>
<label class="col"><input type="checkbox" class="it_skills" value="JavaScript" onchange="updateSkills()"> JavaScript</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Software Installation" onchange="updateSkills()"> Software Installation</label>
<label class="col"><input type="checkbox" class="it_skills" value="HTML" onchange="updateSkills()"> HTML</label>
<label class="col"><input type="checkbox" class="it_skills" value="SQL" onchange="updateSkills()"> SQL</label>
<label class="col"><input type="checkbox" class="it_skills" value="System Analysis" onchange="updateSkills()"> System Analysis</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Database Design" onchange="updateSkills()"> Database Design</label>
<label class="col"><input type="checkbox" class="it_skills" value="Requirements Gathering" onchange="updateSkills()"> Requirements Gathering</label>
<label class="col"><input type="checkbox" class="it_skills" value="UML" onchange="updateSkills()"> UML</label>
<label class="col"><input type="checkbox" class="it_skills" value="Database Management" onchange="updateSkills()"> Database Management</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Backup and Recovery" onchange="updateSkills()"> Backup and Recovery</label>
<label class="col"><input type="checkbox" class="it_skills" value="Database Security" onchange="updateSkills()"> Database Security</label>
<label class="col"><input type="checkbox" class="it_skills" value="Network Configuration" onchange="updateSkills()"> Network Configuration</label>
<label class="col"><input type="checkbox" class="it_skills" value="Firewall Management" onchange="updateSkills()"> Firewall Management</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="TCP/IP" onchange="updateSkills()"> TCP/IP</label>
<label class="col"><input type="checkbox" class="it_skills" value="Network Troubleshooting" onchange="updateSkills()"> Network Troubleshooting</label>
<label class="col"><input type="checkbox" class="it_skills" value="Technical Troubleshooting" onchange="updateSkills()"> Technical Troubleshooting</label>
<label class="col"><input type="checkbox" class="it_skills" value="Hardware Maintenance" onchange="updateSkills()"> Hardware Maintenance</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Project Management" onchange="updateSkills()"> Project Management</label>
<label class="col"><input type="checkbox" class="it_skills" value="Client Communication" onchange="updateSkills()"> Client Communication</label>
<label class="col"><input type="checkbox" class="it_skills" value="CSS" onchange="updateSkills()"> CSS</label>
<label class="col"><input type="checkbox" class="it_skills" value="React" onchange="updateSkills()"> React</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Angular" onchange="updateSkills()"> Angular</label>
<label class="col"><input type="checkbox" class="it_skills" value="Node.js" onchange="updateSkills()"> Node.js</label>
<label class="col"><input type="checkbox" class="it_skills" value="Data Analysis" onchange="updateSkills()"> Data Analysis</label>
<label class="col"><input type="checkbox" class="it_skills" value="Machine Learning" onchange="updateSkills()"> Machine Learning</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Statistics" onchange="updateSkills()"> Statistics</label>
<label class="col"><input type="checkbox" class="it_skills" value="R" onchange="updateSkills()"> R</label>
<label class="col"><input type="checkbox" class="it_skills" value="Network Security" onchange="updateSkills()"> Network Security</label>
<label class="col"><input type="checkbox" class="it_skills" value="Penetration Testing" onchange="updateSkills()"> Penetration Testing</label>
</div>
<div class="row align-items-start">
<label class="col"><input type="checkbox" class="it_skills" value="Security Auditing" onchange="updateSkills()"> Security Auditing</label>
<label class="col"><input type="checkbox" class="it_skills" value="Firewall Configuration" onchange="updateSkills()"> Firewall Configuration</label>
<label class="col"><input type="checkbox" class="it_skills" value="IT Strategy" onchange="updateSkills()"> IT Strategy</label>
<label class="col"><input type="checkbox" class="it_skills" value="Business Analysis" onchange="updateSkills()"> Business Analysis</label>
</div>

</div>
</div>

 <!-- Now, each checkbox will pass the `this` argument to the `updateSkills` function when it's checked or unchecked. --> -->
</div>
                                        </div>
                                        <div class="row">
                                             <div class="col-md-4">
                                                <label for="" class="control-label">Email</label>
                                                <input type="email" class="form-control" name="email"  value="<?php echo $_SESSION['bio']['email'] ?>" required>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="" class="control-label">Password</label>
                                                <input type="password" class="form-control" name="password">
                                                <small><i>Leave this blank if you dont want to change your password</i></small>
                                            </div>
                                        </div>
                                        <div id="msg">
                                            
                                        </div>
                                        <hr class="divider">
                                        <div class="row">
                                            <div class="col-md-12 text-center">
                                                <button class="btn btn-primary">Update Account</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                   </div>
               </div>
                
            </div>


<script>
 

        // function updateSkills(checkbox) {
        //     const mainSkills = document.getElementById('mainSkills');
        //     const checkboxes = document.querySelectorAll('.it_skills');
        //     let selectedSkills = mainSkills.value.split(',').map(skill => skill.trim());
        //     console.log(selectedSkills) // Preserve existing skills


        //     checkboxes.forEach(cb => {
        //         if (cb.checked && !selectedSkills.includes(cb.value)) {
        //             selectedSkills.push(cb.value);
        //         } else if (!cb.checked && selectedSkills.includes(cb.value)) {
        //             const index = selectedSkills.indexOf(cb.value);
        //             selectedSkills.splice(index, 1);
        //         }
        //     });

        //     mainSkills.value = selectedSkills.join(', ');
        // }
        function updateSkills(checkbox) {
    const mainSkills = document.getElementById('mainSkills');
    const checkboxes = document.querySelectorAll('.it_skills');
    let selectedSkills = mainSkills.value.trim() ? mainSkills.value.trim().split(',').map(skill => skill.trim()) : [];

    checkboxes.forEach(cb => {
        if (cb.checked && !selectedSkills.includes(cb.value)) {
            selectedSkills.push(cb.value);
        } else if (!cb.checked && selectedSkills.includes(cb.value)) {
            const index = selectedSkills.indexOf(cb.value);
            selectedSkills.splice(index, 1);
        }
    });

    mainSkills.value = selectedSkills.join(', ');
}



        function tickCheckboxes() {
    const mainSkills = document.getElementById('mainSkills');
    const checkboxes = document.querySelectorAll('.it_skills'); // Select all checkboxes
    const skillsList = mainSkills.value.split(',').map(skill => skill.trim()); // Get skills from textarea

    checkboxes.forEach(cb => {
        if (skillsList.includes(cb.value)) {
            cb.checked = true; // Set checkbox to checked if its value is in skillsList
        } else {
            cb.checked = false; // Set checkbox to unchecked if its value is not in skillsList
        }
    });
}

        document.addEventListener('DOMContentLoaded', () => {
            tickCheckboxes()
            console.log("hello")
        });
//      function updateSkills() {
//     var selectedSkills = [];
//     $('input[class="it_skills"]:checked').each(function() {
//         selectedSkills.push($(this).val());
//     });
// //     $('#mainSkills').val(selectedSkills.join(', '));
// // }
// function updateSkills() {
//     var selectedSkills = $('#mainSkills').val().split(', ').map(skill => skill.trim()); // Get existing skills from textarea

//     $('input[class="it_skills"]:checked').each(function() {
//         var skillToAdd = $(this).val().trim();

//         if (!selectedSkills.includes(skillToAdd)) { // Check if the skill is not already in the textarea
//             selectedSkills.push(skillToAdd); // Add the skill to the array
//         }
//     });

//     $('#mainSkills').val(selectedSkills.join(', ')); // Update the textarea with the updated skills
// }


   $('.datepickerY').datepicker({
        format: " yyyy", 
        viewMode: "years", 
        minViewMode: "years"
   })
   $('.select2').select2({
    placeholder:"Please Select Here",
    width:"100%"
   })
   function displayImg(input,_this) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#cimg').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}
$('#update_account').submit(function(e){
    e.preventDefault()
    start_load()
    $.ajax({
        url:'admin/ajax.php?action=update_account',
        data: new FormData($(this)[0]),
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        success:function(resp){
            if(resp == 1){
                alert_toast("Account successfully updated.",'success');
                setTimeout(function(){
                 location.reload()
                },700)
            }else{
                $('#msg').html('<div class="alert alert-danger">email already exist.</div>')
                end_load()
            }
        }
    })
})
</script>