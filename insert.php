<?php
// Your database connection code here

// Number of additional entries to generate
$entriesToGenerate = 10;

for ($i = 1; $i <= $entriesToGenerate; $i++) {
    $firstname = generateRandomName();
    $middlename = generateRandomName();
    $lastname = generateRandomName();
    $gender = rand(0, 1) ? 'male' : 'female';
    $batch = rand(2000, 2023);
    $course_id = rand(1, 5); // Assuming course IDs are integers from 1 to 5
    $email = "user{$i}@example.com"; // Adjust the email generation logic as needed
    $skills = '';
    $avatar = ''; // You can generate random avatar URLs or use a default value
    $status = rand(0, 1);
    $date_created = 'current_timestamp()';

    $query = "INSERT INTO `alumnus_bio` (`firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `skills`, `avatar`, `status`, `date_created`)
              VALUES ('$firstname', '$middlename', '$lastname', '$gender', '$batch', '$course_id', '$email', '$skills', '$avatar', '$status', $date_created)";

    // Execute the query here or store it in an array for later execution
    // $result = mysqli_query($connection, $query);
}

// Function to generate a random name
function generateRandomName() {
    $names = ['John', 'Jane', 'Michael', 'Emily', 'David', 'Emma', 'Christopher', 'Olivia', 'Daniel', 'Sophia'];
    return $names[array_rand($names)];
}
?>
