<?php
    include '../../config/connection.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $nis = $_POST['nis'];

        $cek_data = "SELECT * FROM tbl_siswa WHERE nis = '$nis'";
        $check_ifexist = mysqli_fetch_array(mysqli_query($_AUTH, $cek_data));

        if(isset($check_ifexist)){

            $exe_data_siswa = mysqli_query($_AUTH, $cek_data);
            $detaildata = mysqli_fetch_array($exe_data_siswa);

            $response["message"] = "data ".$nis." ditemukan di dalam database";
            $response["status"] = true;
            $response["code"] = 200;
            $response["datasiswa"] = [
                "nama_siswa" => $detaildata['nama_siswa'],
                "jenis_kelamin" => $detaildata['jenis_kelamin'],
                "alamat" => $detaildata['alamat'],
                "no_telfon" => $detaildata['no_telp'],
                "email" => $detaildata['email'],
                "tgl_terdaftar" => $detaildata['tgl_terdaftar']
            ];
            echo json_encode($response);
        }else{
            $response["message"] = trim("data not found in database");
            $response["code"] = 400;
            $response["status"] = false;
        }
    }else{
        $response["message"] = trim("Oops! Sory, Request API ini membutuhkan parameter!.");
        $response["code"] = 400;
        $response["status"] = false;
        echo json_encode($response);
    }
?>