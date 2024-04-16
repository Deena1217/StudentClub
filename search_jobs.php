<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$database = "alumni_db";

$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to recommend jobs based on user-input skills using TF-IDF
function recommendJobs($user_skills, $conn, $job_descriptions) {
    // Calculate TF-IDF scores for user skills
    $tfidf_scores = calculateTFIDF($user_skills, $job_descriptions);

    // Prepare SQL statement to fetch job descriptions and skills
    $sql = "SELECT id, skills, company_name, job_description, location, job FROM company";

    // Execute SQL statement
    $result = $conn->query($sql);

    // Check if any jobs were found
    if ($result->num_rows > 0) {
        // Initialize an array to store job recommendations
        $recommendations = array();

        // Loop through each job
        while ($row = $result->fetch_assoc()) {
            // Split skills string into an array
            $job_skills = explode(",", $row["skills"]);

            // Initialize TF-IDF score for the job
            $tfidf_score = 0;

            // Calculate TF-IDF score for each skill in the job
            foreach ($job_skills as $skill) {
                // Check if the skill exists in user skills
                if (isset($tfidf_scores[$skill])) {
                    // Add TF-IDF score for the skill to the job's TF-IDF score
                    $tfidf_score += $tfidf_scores[$skill];
                }
            }

            // Store job recommendation with TF-IDF score
            $recommendations[] = array(
                "id" => $row["id"],
                "company_name" => $row["company_name"],
                "job_description" => $row["job_description"],
                "location" => $row["location"],
                "job" => $row["job"],
                "tfidf_score" => $tfidf_score
            );
        }

        // Sort recommendations by TF-IDF score in descending order
        usort($recommendations, function($a, $b) {
            return $b["tfidf_score"] - $a["tfidf_score"];
        });

        // Output recommended jobs
        echo "<h2>Recommended Jobs:</h2>";
        foreach ($recommendations as $recommendation) {
            echo "<p><strong>Company:</strong> " . $recommendation["company_name"] . "</p>";
            echo "<p><strong>Job:</strong> " . $recommendation["job"] . "</p>";
            echo "<p><strong>Location:</strong> " . $recommendation["location"] . "</p>";
            echo "<hr>";
        }
    } else {
        echo "No jobs found matching your skills.";
    }
}

// Function to calculate TF-IDF scores for skills
function calculateTFIDF($skills, $job_descriptions) {
    $tfidf_scores = array();

    // Calculate term frequency (TF) for each skill in each job description
    foreach ($job_descriptions as $job_description) {
        $word_count = str_word_count(strtolower($job_description), 1); // Split job description into words
        $total_words = count($word_count); // Total number of words in job description

        // Calculate TF for each skill
        foreach ($skills as $skill) {
            $tf = array_count_values($word_count)[$skill] ?? 0; // Term frequency of skill in job description
            $tf_score = $tf / $total_words; // TF score

            // Update TF-IDF score for skill
            if (!isset($tfidf_scores[$skill])) {
                $tfidf_scores[$skill] = 0;
            }
            $tfidf_scores[$skill] += $tf_score;
        }
    }

    // Calculate document frequency (DF) for each skill
    $document_frequency = array();
    foreach ($skills as $skill) {
        $df = 0;
        foreach ($job_descriptions as $job_description) {
            if (stripos($job_description, $skill) !== false) {
                $df++;
            }
        }
        $document_frequency[$skill] = $df;
    }

    // Calculate inverse document frequency (IDF) for each skill
    $total_documents = count($job_descriptions);
    foreach ($skills as $skill) {
        $idf = log($total_documents / ($document_frequency[$skill] + 1)); // Add 1 to avoid division by zero
        $tfidf_scores[$skill] *= $idf;
    }

    return $tfidf_scores;
}

// Example usage:
$user_skills = ["html", "css", "javascript"];
$job_descriptions = ["This job requires proficiency in HTML and CSS.",
                     "Experience with JavaScript is preferred for this role.",
                     "Strong knowledge of HTML and JavaScript is a must."];

recommendJobs($user_skills, $conn, $job_descriptions);


$conn->close();
?>
