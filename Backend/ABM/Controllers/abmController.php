<?php
    function abmController($method, $url, $data = false) {
        $curl = curl_init();
        exit($method);

        switch ($method) {
            case "GET":
                mysqli_set_charset($link, "utf8");
                $query = 'SELECT * from '.data;
                $result = mysqli_query($link, $query);
                $rows = array();
                while($r = mysqli_fetch_assoc($result)) {
                    $rows[] = $r;
                }
                print json_encode($rows);
                mysqli_close($link);
            case "POST":
                curl_setopt($curl, CURLOPT_POST, 1);

                if ($data)
                    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
                break;
            case "PUT":
                curl_setopt($curl, CURLOPT_PUT, 1);
                break;
            default:
                if ($data)
                    $url = sprintf("%s?%s", $url, http_build_query($data));
        }
    }
    abmController()
?>
