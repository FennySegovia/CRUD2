<?php
    $query = "<<UPDATE SELECT QUERY>>";
    $result = mysqli_query($dbc, $query); 

    $query = "SELECT * FROM tblsubjects 
        LEFT JOIN tblsyllabus 
        ON tblsyllabus.subject_id = tblsubjects.subjectid";
?>