<?php
namespace Hash;

/**
 * PHP implementation of the MD5 algorithm according RFC-1321.
 * This implementation has support for hash context serialization which the php inbuilt HashContext has not.
 */
class MD5
{
    /**
     * Word buffer A
     */
    private $A = "67452301";

    /**
     * Word buffer B
     */
    private $B = "efcdab89";

    /**
     * Word buffer C
     */
    private $C = "98badcfe";

    /**
     * Word buffer D
     */
    private $D = "10325476";

    /**
     * String buffer which contains
     */
    private $buffer = "";

    /**
     * Total message length
     */
    private $length = 0;

    /**
     * Pump data into context
     */
    public function pump(string $string)
    {
        $this->calculate($this->convertToArray($string));
    }

    /**
     * Serialize context
     */
    public function __sleep()
    {
        if($this->buffer !== '') {
            throw new \Exception('Can not serialize message with a buffer');
        }

        return [
            'A',
            'B',
            'C',
            'D',
            'length',
        ];
    }

    /**
     * Calculate words
     */
    private function calculate(array $words)
    {
        $A = $this->A ;
        $B = $this->B ;
        $C = $this->C ;
        $D = $this->D ;

        for($i = 0; $i <= count($words)/16-1; $i++){
            $this->A  = $A;
            $this->B  = $B;
            $this->C  = $C;
            $this->D  = $D;

            /* ROUND 1 */
            $this->FF($A, $B, $C, $D, $words[0 + ($i * 16)], 7, "d76aa478");
            $this->FF($D, $A, $B, $C, $words[1 + ($i * 16)], 12, "e8c7b756");
            $this->FF($C, $D, $A, $B, $words[2 + ($i * 16)], 17, "242070db");
            $this->FF($B, $C, $D, $A, $words[3 + ($i * 16)], 22, "c1bdceee");
            $this->FF($A, $B, $C, $D, $words[4 + ($i * 16)], 7, "f57c0faf");
            $this->FF($D, $A, $B, $C, $words[5 + ($i * 16)], 12, "4787c62a");
            $this->FF($C, $D, $A, $B, $words[6 + ($i * 16)], 17, "a8304613");
            $this->FF($B, $C, $D, $A, $words[7 + ($i * 16)], 22, "fd469501");
            $this->FF($A, $B, $C, $D, $words[8 + ($i * 16)], 7, "698098d8");
            $this->FF($D, $A, $B, $C, $words[9 + ($i * 16)], 12, "8b44f7af");
            $this->FF($C, $D, $A, $B, $words[10 + ($i * 16)], 17, "ffff5bb1");
            $this->FF($B, $C, $D, $A, $words[11 + ($i * 16)], 22, "895cd7be");
            $this->FF($A, $B, $C, $D, $words[12 + ($i * 16)], 7, "6b901122");
            $this->FF($D, $A, $B, $C, $words[13 + ($i * 16)], 12, "fd987193");
            $this->FF($C, $D, $A, $B, $words[14 + ($i * 16)], 17, "a679438e");
            $this->FF($B, $C, $D, $A, $words[15 + ($i * 16)], 22, "49b40821");

            /* ROUND 2 */
            $this->GG($A, $B, $C, $D, $words[1 + ($i * 16)], 5, "f61e2562");
            $this->GG($D, $A, $B, $C, $words[6 + ($i * 16)], 9, "c040b340");
            $this->GG($C, $D, $A, $B, $words[11 + ($i * 16)], 14, "265e5a51");
            $this->GG($B, $C, $D, $A, $words[0 + ($i * 16)], 20, "e9b6c7aa");
            $this->GG($A, $B, $C, $D, $words[5 + ($i * 16)], 5, "d62f105d");
            $this->GG($D, $A, $B, $C, $words[10 + ($i * 16)], 9, "2441453");
            $this->GG($C, $D, $A, $B, $words[15 + ($i * 16)], 14, "d8a1e681");
            $this->GG($B, $C, $D, $A, $words[4 + ($i * 16)], 20, "e7d3fbc8");
            $this->GG($A, $B, $C, $D, $words[9 + ($i * 16)], 5, "21e1cde6");
            $this->GG($D, $A, $B, $C, $words[14 + ($i * 16)], 9, "c33707d6");
            $this->GG($C, $D, $A, $B, $words[3 + ($i * 16)], 14, "f4d50d87");
            $this->GG($B, $C, $D, $A, $words[8 + ($i * 16)], 20, "455a14ed");
            $this->GG($A, $B, $C, $D, $words[13 + ($i * 16)], 5, "a9e3e905");
            $this->GG($D, $A, $B, $C, $words[2 + ($i * 16)], 9, "fcefa3f8");
            $this->GG($C, $D, $A, $B, $words[7 + ($i * 16)], 14, "676f02d9");
            $this->GG($B, $C, $D, $A, $words[12 + ($i * 16)], 20, "8d2a4c8a");

            /* ROUND 3 */
            $this->HH($A, $B, $C, $D, $words[5 + ($i * 16)], 4, "fffa3942");
            $this->HH($D, $A, $B, $C, $words[8 + ($i * 16)], 11, "8771f681");
            $this->HH($C, $D, $A, $B, $words[11 + ($i * 16)], 16, "6d9d6122");
            $this->HH($B, $C, $D, $A, $words[14 + ($i * 16)], 23, "fde5380c");
            $this->HH($A, $B, $C, $D, $words[1 + ($i * 16)], 4, "a4beea44");
            $this->HH($D, $A, $B, $C, $words[4 + ($i * 16)], 11, "4bdecfa9");
            $this->HH($C, $D, $A, $B, $words[7 + ($i * 16)], 16, "f6bb4b60");
            $this->HH($B, $C, $D, $A, $words[10 + ($i * 16)], 23, "bebfbc70");
            $this->HH($A, $B, $C, $D, $words[13 + ($i * 16)], 4, "289b7ec6");
            $this->HH($D, $A, $B, $C, $words[0 + ($i * 16)], 11, "eaa127fa");
            $this->HH($C, $D, $A, $B, $words[3 + ($i * 16)], 16, "d4ef3085");
            $this->HH($B, $C, $D, $A, $words[6 + ($i * 16)], 23, "4881d05");
            $this->HH($A, $B, $C, $D, $words[9 + ($i * 16)], 4, "d9d4d039");
            $this->HH($D, $A, $B, $C, $words[12 + ($i * 16)], 11, "e6db99e5");
            $this->HH($C, $D, $A, $B, $words[15 + ($i * 16)], 16, "1fa27cf8");
            $this->HH($B, $C, $D, $A, $words[2 + ($i * 16)], 23, "c4ac5665");

            /* ROUND 4 */
            $this->II($A, $B, $C, $D, $words[0 + ($i * 16)], 6, "f4292244");
            $this->II($D, $A, $B, $C, $words[7 + ($i * 16)], 10, "432aff97");
            $this->II($C, $D, $A, $B, $words[14 + ($i * 16)], 15, "ab9423a7");
            $this->II($B, $C, $D, $A, $words[5 + ($i * 16)], 21, "fc93a039");
            $this->II($A, $B, $C, $D, $words[12 + ($i * 16)], 6, "655b59c3");
            $this->II($D, $A, $B, $C, $words[3 + ($i * 16)], 10, "8f0ccc92");
            $this->II($C, $D, $A, $B, $words[10 + ($i * 16)], 15, "ffeff47d");
            $this->II($B, $C, $D, $A, $words[1 + ($i * 16)], 21, "85845dd1");
            $this->II($A, $B, $C, $D, $words[8 + ($i * 16)], 6, "6fa87e4f");
            $this->II($D, $A, $B, $C, $words[15 + ($i * 16)], 10, "fe2ce6e0");
            $this->II($C, $D, $A, $B, $words[6 + ($i * 16)], 15, "a3014314");
            $this->II($B, $C, $D, $A, $words[13 + ($i * 16)], 21, "4e0811a1");
            $this->II($A, $B, $C, $D, $words[4 + ($i * 16)], 6, "f7537e82");
            $this->II($D, $A, $B, $C, $words[11 + ($i * 16)], 10, "bd3af235");
            $this->II($C, $D, $A, $B, $words[2 + ($i * 16)], 15, "2ad7d2bb");
            $this->II($B, $C, $D, $A, $words[9 + ($i * 16)], 21, "eb86d391");

            $A = $this->addUnsigned($this->hexdec2($A),$this->hexdec2($this->A));
            $B = $this->addUnsigned($this->hexdec2($B),$this->hexdec2($this->B));
            $C = $this->addUnsigned($this->hexdec2($C),$this->hexdec2($this->C));
            $D = $this->addUnsigned($this->hexdec2($D),$this->hexdec2($this->D));
        }
        
        $this->A = $A;
        $this->B = $B;
        $this->C = $C;
        $this->D = $D;
    }

    /**
     * Finalize context
     */
    public function finalize(): string
    {
        $this->calculate($this->convertToArray('', true));
        $md5 = $this->WordToHex($this->A).$this->WordToHex($this->B).$this->WordToHex($this->C).$this->WordToHex($this->D);
        return $md5;
    }

    /**
     * Convert word to HEX
     */
    private function WordToHex(string $lValue): string
    {
        $WordToHexValue = "";
        for ($lCount = 0;$lCount<=3;$lCount++) {
            $lByte = ($this->hexdec2($lValue)>>($lCount*8)) & 255;
            $C = dechex($lByte);
            $WordToHexValue .= (strlen($C)=='1')?"0".dechex($lByte):dechex($lByte);
        }
        return $WordToHexValue;
    }

    /**
     * F(X,Y,Z) = XY v not(X) Z (X AND Y OR NOT X AND Z)
     */
    private function F($X, $Y, $Z): string
    {
        $X = $this->hexdec2($X);
        $Y = $this->hexdec2($Y);
        $Z = $this->hexdec2($Z);
        $calc = (($X & $Y) | ((~ $X) & $Z));
        return  $calc;
    }

    /**
     * G(X,Y,Z) = XZ v Y not(Z) (X AND Z OR Y AND NOT Z)
     */
    private function G($X, $Y, $Z)
    {
        $X = $this->hexdec2($X);
        $Y = $this->hexdec2($Y);
        $Z = $this->hexdec2($Z);
        $calc = (($X & $Z) | ($Y & (~ $Z)));
        return  $calc;
    }

    /**
     * H(X,Y,Z) = X xor Y xor Z (X XOR Y XOR Z)
     */
    private function H($X, $Y, $Z){
        $X = $this->hexdec2($X);
        $Y = $this->hexdec2($Y);
        $Z = $this->hexdec2($Z);
        $calc = ($X ^ $Y ^ $Z);
        return  $calc;
    }

    /**
     * I(X,Y,Z) = Y xor (X v not(Z))
     */
    private function I($X, $Y, $Z)
    {
        $X = $this->hexdec2($X);
        $Y = $this->hexdec2($Y);
        $Z = $this->hexdec2($Z);
        $calc = ($Y ^ ($X | (~ $Z)));
        return  $calc;
    }

    /**
     * Add unsigned
     */
    private function addUnsigned($lX, $lY)
    {
        $lX8 = ($lX & 0x80000000);
        $lY8 = ($lY & 0x80000000);
        $lX4 = ($lX & 0x40000000);
        $lY4 = ($lY & 0x40000000);
        $lResult = ($lX & 0x3FFFFFFF)+($lY & 0x3FFFFFFF);
        
        if ($lX4 & $lY4) {
            $res = ($lResult ^ 0x80000000 ^ $lX8 ^ $lY8);
            if($res < 0)
                return '-'.dechex(abs($res));
            else
                return dechex($res);
        }
        if ($lX4 | $lY4) {
            if ($lResult & 0x40000000) {
                $res = ($lResult ^ 0xC0000000 ^ $lX8 ^ $lY8);
                if($res < 0)
                    return '-'.dechex(abs($res));
                else
                    return dechex($res);
            } else {
                $res = ($lResult ^ 0x40000000 ^ $lX8 ^ $lY8);
                if($res < 0)
                    return '-'.dechex(abs($res));
                else
                    return dechex($res);
            }
        } else {
            $res = ($lResult ^ $lX8 ^ $lY8);
            if($res < 0)
                return '-'.dechex(abs($res));
            else
                return dechex($res);
        }
    }

    /**
     * Convert hex to decimal
     */
    protected function hexdec2($hex)
    {
        if(substr($hex, 0,1) == "-") {
            return doubleval('-'.hexdec("0x". str_replace("-", "", $hex )));
        }

        return hexdec("0x".$hex);
    }

    /**
     * #define FF(a, b, c, d, x, s, ac) { \
     *  (a) += F ((b), (c), (d)) + (x) + (UINT4)(ac); \
     *  (a) = ROTATE_LEFT ((a), (s)); \
     *  (a) += (b); \
     * }
     */
    private function FF(&$A, $B, $C, $D, $M, $s, $t)
    {
        $Level1 = $this->hexdec2($this->addUnsigned( $this->F($B, $C, $D) , bindec($M) ));
        $level2 = $this->hexdec2($this->addUnsigned($Level1, $this->hexdec2($t)));
        $A = $this->hexdec2($this->addUnsigned($this->hexdec2($A),$level2));
        $A = $this->rotate($A, $s);
        $A =  $this->addUnsigned($A , $this->hexdec2($B)) ;
    }

    /**
     * #define GG(a, b, c, d, x, s, ac) { \
     *  (a) += G ((b), (c), (d)) + (x) + (UINT4)(ac); \
     *  (a) = ROTATE_LEFT ((a), (s)); \
     *  (a) += (b); \
     * } 
     */   
    private function GG(&$A, $B, $C, $D, $M, $s, $t)
    {
        $Level1 = $this->hexdec2($this->addUnsigned( $this->G($B, $C, $D) , bindec($M) ));
        $level2 = $this->hexdec2($this->addUnsigned($Level1, $this->hexdec2($t)));
        $A = $this->hexdec2($this->addUnsigned($this->hexdec2($A),$level2));
        $A = $this->rotate($A, $s);
        $A =  $this->addUnsigned($A , $this->hexdec2($B)) ;
    }

    /**
     * #define HH(a, b, c, d, x, s, ac) { \
     *  (a) += H ((b), (c), (d)) + (x) + (UINT4)(ac); \
     *  (a) = ROTATE_LEFT ((a), (s)); \
     *  (a) += (b); \
     * }
     */
    function HH(&$A, $B, $C, $D, $M, $s, $t){
        $Level1 = $this->hexdec2($this->addUnsigned( $this->H($B, $C, $D) , bindec($M) ));
        $level2 = $this->hexdec2($this->addUnsigned($Level1, $this->hexdec2($t)));
        $A = $this->hexdec2($this->addUnsigned($this->hexdec2($A),$level2));
        $A = $this->rotate($A, $s);
        $A =  $this->addUnsigned($A , $this->hexdec2($B)) ;
    }

    /**
     * #define II(a, b, c, d, x, s, ac) { \
     *   (a) += I ((b), (c), (d)) + (x) + (UINT4)(ac); \
     *   (a) = ROTATE_LEFT ((a), (s)); \
     *   (a) += (b); \
     * }
     */
    function II(&$A, $B, $C, $D, $M, $s, $t){
            $Level1 = $this->hexdec2($this->addUnsigned( $this->I($B, $C, $D) , bindec($M) ));
            $level2 = $this->hexdec2($this->addUnsigned($Level1, $this->hexdec2($t)));
            $A = $this->hexdec2($this->addUnsigned($this->hexdec2($A),$level2));
            $A = $this->rotate($A, $s);
            $A =  $this->addUnsigned($A , $this->hexdec2($B)) ;
    }

    /**
     * #define ROTATE_LEFT(x, n) (((x) << (n)) | ((x) >> (32-(n))))
     */
    function rotate ($decimal, $bits) {
        return  (($decimal << $bits) |  $this->shiftright($decimal, (32 - $bits))  & 0xffffffff);
    }

    /**
     * Right shift
     */
    private function shiftright($decimal , $right)
    {
        if($decimal < 0) {
            $res = decbin($decimal >> $right);
            
            for ($i=0; $i < $right; $i++) {
                $res[$i] = "";
            }

            return bindec($res) ;
        } 
        
        return ($decimal >> $right);
    }


    /**
     * Convert to array
     */
    private function convertToArray(string $string, bool $final=false) {
        $lWordCount;

        if($this->buffer) {
            $string = $this->buffer.$string;
            $this->buffer = '';
        }

        $lMessageLength = strlen($string);
        
        if($final === false) {
            $cut = $lMessageLength % 32;
            $this->buffer = substr($string, $lMessageLength - $cut);
            $string = substr($string, 0, $lMessageLength - $cut);
            $lMessageLength -= $cut;
        }

        $lNumberOfWords_temp1=$lMessageLength + 8;
        $lNumberOfWords_temp2=($lNumberOfWords_temp1-($lNumberOfWords_temp1 % 64))/64;
        $lNumberOfWords = ($lNumberOfWords_temp2+1)*16;

        $lWordArray = [""];
        $lBytePosition = 0;
        $lByteCount = 0;

        while ($lByteCount < $lMessageLength ) {
            $lWordCount = ($lByteCount-($lByteCount % 4))/4;
            $lBytePosition = ($lByteCount % 4)*8;
            
            if(!isset($lWordArray[$lWordCount])) {
                $lWordArray[$lWordCount] = 0;
            }

            $lWordArray[$lWordCount] = ($lWordArray[$lWordCount] | (ord($string[$lByteCount])<<$lBytePosition));
            $lByteCount++;
        }
        
        $lWordCount = ($lByteCount-($lByteCount % 4))/4;
        $lBytePosition = ($lByteCount % 4)*8;
        $this->length += $lMessageLength;
                
        if($final === true) {
            if(!isset($lWordArray[$lWordCount])) {
                $lWordArray[$lWordCount] = 0;
            }
            
            $lWordArray[$lWordCount] = $lWordArray[$lWordCount] | (0x80<<$lBytePosition);
            $lWordArray[$lNumberOfWords-2] = $this->length<<3;
            $lWordArray[$lNumberOfWords-1] = $this->length>>29;
        }

        for ($i=0; $i < $lNumberOfWords; $i++) {
            if(isset($lWordArray[$i])) {
                $lWordArray[$i] = decbin($lWordArray[$i]);
            } else if($final === false) {
                return $lWordArray;
            } else {
                $lWordArray[$i] = '0';
            }
        }

        return $lWordArray;
    }
}