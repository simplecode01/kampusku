<?php
    include '../../config/connection.php';
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        
        $nis = $_POST ['nis'];
        $nama_siswa = $_POST ['nama_siswa'];
        $jenis_kelamin = $_POST ['jenis_kelamin'];
        $alamat = $_POST ['alamat'];
        $no_telp = $_POST ['no_telp'];
        $email = $_POST ['email'];

        $cek_data = "SELECT * FROM tbl_siswa WHERE nis = '$nis'";
        $check_ifexist = mysqli_fetch_array(mysqli_query($_AUTH, $cek_data));

        if (isset($check_ifexist)) {

            $query_edit_data = "UPDATE tbl_siswa 
            SET nama_siswa = '$nama_siswa', jenis_kelamin = '$jenis_kelamin', alamat = '$alamat', no_telp ='$no_telp', email = '$email' 
            WHERE tbl_siswa.nis = '$nis'";
            if (mysqli_query($_AUTH, $query_edit_data)) {

                $exe_edit_data = mysqli_query($_AUTH, $cek_data);
                $detailedit = mysqli_fetch_array($exe_edit_data);

                $response["message"] = "Data ditemukan di dalam database dan sudah dirubah";
                $response["nis"] = $nis;
                $response["status"] = true;
                $response["code"] = 200;
                $response["change_data"] = [
                    "nama_siswa" => $detailedit['nama_siswa'],
                    "jenis_kelamin" => $detailedit['jenis_kelamin'],
                    "alamat" => $detailedit['alamat'],
                    "no_telfon" => $detailedit['no_telp'],
                    "email" => $detailedit['email'],
                    "tgl_terdaftar" => $detailedit['tgl_terdaftar']
                ];
                echo json_encode($response);
            }else{
                $response["message"] = "Data tidak berubah silahkan coba kembali";
                $response["status"] = false;
                $response["code"] = 403;
                echo json_encode($response);
            }
        }else{
            $response["message"] = "Data tidak terdapat didalam database";
            $response["status"] = false;
            $response["code"] = 403;
            echo json_encode($response);
        }
    }else{
        $_response["message"] = trim("ERROR Need API");
        $_response["code"] = 400;
        $_response["status"] = false;
        echo json_encode($_response);
    }

?>