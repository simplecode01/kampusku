<?php
    include '../../config/connection.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $nis = $_POST ['nis'];

        $cek_nis = "SELECT * FROM tbl_siswa WHERE nis = '$nis'";
        $check_ifexist = mysqli_fetch_array(mysqli_query($_AUTH, $cek_nis));

        if(isset($check_ifexist)){
            $query_delete_data = "DELETE FROM tbl_datasiswa WHERE nis= '$nis'";
            if (mysqli_query($_AUTH, $query_delete_data)) {
                $query_delete_siswa = "DELETE FROM tbl_siswa WHERE nis = '$nis'";
                if (mysqli_query($_AUTH, $query_delete_siswa)) {
                    $response["message"] = "Data siswa dengan nis ".$nis." berhasil di delete";
                    $response["code"] = 201;
                    $response["status"] = true;
                    echo json_encode($response);
                } else {
                    $response["message"] = "Error please try again";
                    $response["code"] = 403;
                    $response["status"] = false;
                    echo json_encode($response);
                }
                mysqli_close($_AUTH);
            }else{
                $response["message"] = "Error please try again";
                $response["code"] = 403;
                $response["status"] = false;
                echo json_encode($response);
            }
        }else{
            $response["message"] = trim("Data tidak berada di dalam database");
            $response["code"] = 400;
            $response["status"] = false;
        }
    }else {
        $response["message"] = trim("Error Need APi");
        $response["code"] = 400;
        $response["status"] = false;
        echo json_encode($response);
    }
?>