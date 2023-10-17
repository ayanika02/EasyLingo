<?php
// Start the session
session_set_cookie_params(3600, '/', '.yourdomain.com', false, true);

session_start();



// Connect to the database
$db = new PDO('mysql:host=localhost;dbname=login', 'root', '');

// Check if 'user_id' is set in the session
if (isset($_SESSION['user_id'])) {
    // Get the user's ID
    $userId = $_SESSION['user_id'];

    // Check if 'language_code' is set in the GET parameters
    if (isset($_GET['language_code'])) {
        // Get the language code of the language the user clicked on
        $languageCode = $_GET['language_code'];

        // Insert the click into the progress table
        $sql = 'INSERT INTO progress (user_id, language_code, created) VALUES (:user_id, :language_code, NOW())';
        $stmt = $db->prepare($sql);
        $stmt->bindParam(':user_id', $userId);
        $stmt->bindParam(':language_code', $languageCode);
        $stmt->execute();

        // Redirect the user to the language page
        header('Location: hindi.php?language_code=' . $languageCode);
    } else {
        echo "Missing 'language_code' in GET parameters.";
    }
} else {
    echo "User not logged in or 'user_id' not set in the session.";
}
?>
