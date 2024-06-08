<?php

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Str;

if (! function_exists('generate_text_depth_tree')) {
    /**
     * Tạo text theo độ sâu.
     *
     * @param integer $depth
     */
    function generate_text_depth_tree($depth, $word = '-'){
        $text = '';
        if($depth > 0){
            for($i = 0; $i < $depth; $i++){
                $text .= $word;
            }
        }
        return $text;
    }
}
if (! function_exists('uniqid_real')) {
    function uniqid_real($lenght = 13) {
        // uniqid gives 13 chars, but you could adjust it to your needs.
        if (function_exists("random_bytes")) {
            $bytes = random_bytes(ceil($lenght / 2));
        } elseif (function_exists("openssl_random_pseudo_bytes")) {
            $bytes = openssl_random_pseudo_bytes(ceil($lenght / 2));
        } else {
            throw new \Exception("no cryptographically secure random function available");
        }
        return Str::upper(substr(bin2hex($bytes), 0, $lenght));
    }
}

if (! function_exists('format_price')) {
    function format_price($price, $positionCurrent = '') {
        if($positionCurrent == ''){
            $positionCurrent = config('custom.format.position_currency');
        }
        return $positionCurrent == 'left' ? config('custom.currency').number_format($price) : number_format($price).config('custom.currency');
    }
}

if (! function_exists('format_date')) {
    function format_date($date, $format = null) {
        if($date){
            $format = $format ?: config('custom.format.date');
            return date($format, strtotime($date));
        }
        return null;
    }
}

if (! function_exists('format_datetime')) {
    function format_datetime($datetime, $format = null) {
        if($datetime){
            $format = $format ?: config('custom.format.datetime');
            return date($format, strtotime($datetime));
        }
        return null;
    }
}

if (! function_exists('calculate_distance')) {
    // Hàm tính khoảng cách giữa hai điểm trên mặt phẳng
    function calculate_distance($lat1, $lng1, $lat2, $lng2) {
        $earthRadius = 6371; // Bán kính trái đất trong kilômét

        // Đổi độ sang radian
        $dLat = deg2rad($lat2 - $lat1);
        $dLng = deg2rad($lng2 - $lng1);

        // Áp dụng công thức Haversine
        $a = sin($dLat / 2) * sin($dLat / 2) +
                cos(deg2rad($lat1)) * cos(deg2rad($lat2)) *
                sin($dLng / 2) * sin($dLng / 2);
        $c = 2 * atan2(sqrt($a), sqrt(1 - $a));
        return $earthRadius * $c;
    }
    if (! function_exists('calculateDistanceGoogleAPi')) {
        /**
         * Tính khoảng cách và thời gian từ điểm xuất phát đến điểm đến sử dụng Google Maps API.
         *
         * @param float $originLat Vĩ độ điểm xuất phát
         * @param float $originLng Kinh độ điểm xuất phát
         * @param float $destLat Vĩ độ điểm đến
         * @param float $destLng Kinh độ điểm đến
         * @return float|string Khoảng cách tính bằng km hoặc thông báo lỗi
         */
        function calculateDistanceGoogleAPi(float $originLat, float $originLng, float $destLat, float $destLng): float|string
        {
            $apiKey = config('services.google_maps.api_key');
            $origin = "{$originLat},{$originLng}";
            $destination = "{$destLat},{$destLng}";

            $response = Http::get("https://maps.googleapis.com/maps/api/distancematrix/json", [
                'origins' => $origin,
                'destinations' => $destination,
                'key' => $apiKey,
            ]);

            if ($response->successful()) {
                $data = $response->json();
                if (isset($data['rows'][0]['elements'][0]['distance'])) {
                    $distanceMeters = $data['rows'][0]['elements'][0]['distance']['value'];
                    $distanceKilometers = $distanceMeters / 1000;
                    return round($distanceKilometers, 1);
                }
            }

            return 'Không thể tính toán khoảng cách.';
        }
    }

}
