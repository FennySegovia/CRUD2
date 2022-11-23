SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tblsubjects` (
  `subject_id` int(20) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblsubjects` (`subject_id`, `subject_code`, `subject_name`) VALUES
(01, 'BSCS122650', 'AUTOMATA THEORY AND FORMAL LANGUAGES'),
(02, 'BSCS122739', 'CS ELECTIVE 2'),
(03, 'BSCS122722', 'WEB PROGRAMMING AND DEVELOPMENT'),
(04, 'BSCS122676', 'ADVANCE DATABASE SYSTEMS');

ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`subject_id`);

ALTER TABLE `tblsubjects`
  MODIFY `subject_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

CREATE TABLE 'tblsyllabus'(
  'syllabus_id' int(20) NOT NULL PRIMARY KEY,
  'subject_id' int (20) FOREIGN KEY REFERENCES tblsubjects,
  'syllabus_code' varchar(50) NOT NULL,
  'syllabus_author' varchar(50) NOT NULL
)

INSERT INTO 'tblsyllabus' ('syllabus_id', 'subject_id', 'syllabus_code', 'syllabus_author') VALUES
(11, 'BSCS122650', 'CS131', 'WMSU'),
(12, 'BSCS122739', 'CS140', 'WMSU'),
(13, 'BSCS122722', 'CS139', 'WMSU'),
(14, 'BSCS122676', 'CS135', 'WMSU');


