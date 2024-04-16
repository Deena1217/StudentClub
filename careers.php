<?php
include 'admin/db_connect.php';
error_reporting(0);

// Get the user's login ID from the session
$uid = $_SESSION['login_id'];

// Prepare the SQL query
$query = "SELECT skills FROM users JOIN alumnus_bio ON users.alumnus_id = alumnus_bio.id WHERE users.id = $uid";
$result = $conn->query($query);

// Check if the query was successful
if ($result) {
    // Fetch the skills from the result
    $row = $result->fetch_assoc();
    $skills = $row['skills'];
    $skills = str_replace(' ', '', $skills);

    // Close the result set
    $result->free();
} else {
    echo "Error executing the query: " . $conn->error;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Recommendation Search</title>
    <style>
        body {
            color: white;
            background-color: #333;
            font-family: Arial, sans-serif;
        }

        .job-box {
            border: 2px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
            background-color: #444;
        }

        .job-box h4 {
            margin-top: 0;
        }

        .job-box p {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <header class="masthead">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center justify-content-center text-center">
                <div class="col-lg-8 align-self-end mb-4 page-title">
                    <h3 class="text-white">Job List</h3>
                    <hr class="divider my-4" />
                </div>
            </div>
        </div>
    </header>

    <div class="container mt-3 pt-2">
        <p>Your skills are <?php echo $skills; ?> Based on it, we have recommended the following jobs:</p>
        <div id="jobsList"></div>
    </div>

    <script>
        // Function to make an AJAX request to the Flask API
        function fetchRecommendedJobs(skills) {
            const xhr = new XMLHttpRequest();
            const url = `http://127.0.0.1:5001/search?skills=${encodeURIComponent(skills)}`;

            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        displayRecommendedJobs(response);
                    } else {
                        console.error('Error fetching data from the API.');
                    }
                }
            };

            xhr.open('GET', url, true);
            xhr.send();
        }

        // Function to display recommended jobs on the page
        function displayRecommendedJobs(data) {
            const jobsList = document.getElementById('jobsList');
            if (data.recommended_jobs && data.recommended_jobs.length > 0) {
                jobsList.innerHTML = ''; // Clear previous content
                data.recommended_jobs.forEach(job => {
                    const jobBox = document.createElement('div');
                    jobBox.className = 'job-box';
                    jobBox.innerHTML = `
                        <h4>${job.job_title}</h4>
                        <p>Description: ${job.job_description}</p>
                        <p>Required Skills: ${job.required_skills}</p>
                        <p>Company: ${job.company}</p>
                        <p>Location: ${job.location}</p>
                        <p>Similarity Score: ${job.similarity_score}</p>
                    `;
                    jobsList.appendChild(jobBox);
                });
            } else {
                jobsList.innerHTML = 'No recommended jobs found.';
            }
        }

        // Get the skills from PHP and fetch recommended jobs on page load
        window.onload = function () {
            const skills = '<?php echo $skills; ?>';
            fetchRecommendedJobs(skills);
        };
    </script>
</body>
</html>
