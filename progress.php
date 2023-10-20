<?php
session_set_cookie_params(3600, '/', '.yourdomain.com', false, true);

session_start();



$db = new PDO('mysql:host=localhost;dbname=login', 'root', '');

if (isset($_SESSION['user_id'])) {
    $userId = $_SESSION['user_id'];

    if (isset($_GET['language_code'])) {
        $languageCode = $_GET['language_code'];

        $sql = 'INSERT INTO progress (user_id, language_code, created) VALUES (:user_id, :language_code, NOW())';
        $stmt = $db->prepare($sql);
        $stmt->bindParam(':user_id', $userId);
        $stmt->bindParam(':language_code', $languageCode);
        $stmt->execute();

        header('Location: hindi.php?language_code=' . $languageCode);
    } else {
        echo "Missing 'language_code' in GET parameters.";
    }
} else {
    echo "User not logged in or 'user_id' not set in the session.";
}
?>
