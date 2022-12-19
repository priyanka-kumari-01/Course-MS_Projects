function start() {
    var tt1 = document.getElementById("Txtbtn1").value;
    var tt2 = document.getElementById("Txtbtn2").value;
    var tt3 = document.getElementById("Txtbtn3").value;
    var tt4 = document.getElementById("Txtbtn4").value;
    var tt5 = document.getElementById("Txtbtn5").value;
    var tt6 = document.getElementById("Txtbtn6").value;
    var tt7 = document.getElementById("Txtbtn7").value;
    var tt8 = document.getElementById("Txtbtn8").value;
    var tt9 = document.getElementById("Txtbtn9").value;

    // Checking if Player X won or not and after
    // that disabled all the other fields
    if ((tt1 == 'x' || tt1 == 'X') && (tt2 == 'x' || tt2 == 'X') && (tt3 == 'x' || tt3 == 'X')) {
        disableFunX("Txtbtn4", "Txtbtn5", "Txtbtn6", "Txtbtn7", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt1 == 'x' || tt1 == 'X') && (tt4 == 'x' || tt4 == 'X') && (tt7 == 'x' || tt7 == 'X')) {
        disableFunX("Txtbtn2", "Txtbtn3", "Txtbtn5", "Txtbtn6", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt7 == 'x' || tt7 == 'X') && (tt8 == 'x' || tt8 == 'X') && (tt9 == 'x' || tt9 == 'X')) {
        disableFunX("Txtbtn1", "Txtbtn2", "Txtbtn3", "Txtbtn4", "Txtbtn5", "Txtbtn6")
    }
    else if ((tt3 == 'x' || tt3 == 'X') && (tt6 == 'x' || tt6 == 'X') && (tt9 == 'x' || tt9 == 'X')) {
        disableFunX("Txtbtn1", "Txtbtn2", "Txtbtn4", "Txtbtn5", "Txtbtn7", "Txtbtn8")
    }
    else if ((tt1 == 'x' || tt1 == 'X') && (tt5 == 'x' || tt5 == 'X') && (tt9 == 'x' || tt9 == 'X')) {
        disableFunX("Txtbtn2", "Txtbtn3", "Txtbtn4", "Txtbtn6", "Txtbtn7", "Txtbtn8")
    }
    else if ((tt3 == 'x' || tt3 == 'X') && (tt5 == 'x' || tt5 == 'X') && (tt7 == 'x' || tt7 == 'X')) {
        disableFunX("Txtbtn1", "Txtbtn2", "Txtbtn4", "Txtbtn6", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt2 == 'x' || tt2 == 'X') && (tt5 == 'x' || tt5 == 'X') && (tt8 == 'x' || tt8 == 'X')) {
        disableFunX("Txtbtn1", "Txtbtn3", "Txtbtn4", "Txtbtn6", "Txtbtn7", "Txtbtn9")
    }
    else if ((tt4 == 'x' || tt4 == 'X') && (tt5 == 'x' || tt5 == 'X') && (tt6 == 'x' || tt6 == 'X')) {
        disableFunX("Txtbtn1", "Txtbtn2", "Txtbtn3", "Txtbtn7", "Txtbtn8", "Txtbtn9")

    }

    // Checking of Player X finish
    // Checking for Player 0 starts, Is player 0 won or
    // not and after that disabled all the other fields
    else if ((tt1 == '0' || tt1 == '0') && (tt2 == '0' || tt2 == '0') && (tt3 == '0' || tt3 == '0')) {
        disableFun0("Txtbtn4", "Txtbtn5", "Txtbtn6", "Txtbtn7", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt1 == '0' || tt1 == '0') && (tt4 == '0' || tt4 == '0') && (tt7 == '0' || tt7 == '0')) {
        disableFun0("Txtbtn2", "Txtbtn3", "Txtbtn5", "Txtbtn6", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt7 == '0' || tt7 == '0') && (tt8 == '0' || tt8 == '0') && (tt9 == '0' || tt9 == '0')) {
        disableFun0("Txtbtn1", "Txtbtn2", "Txtbtn3", "Txtbtn4", "Txtbtn5", "Txtbtn6")
    }
    else if ((tt3 == '0' || tt3 == '0') && (tt6 == '0' || tt6 == '0') && (tt9 == '0' || tt9 == '0')) {
        disableFun0("Txtbtn1", "Txtbtn2", "Txtbtn4", "Txtbtn5", "Txtbtn7", "Txtbtn8")
    }
    else if ((tt1 == '0' || tt1 == '0') && (tt5 == '0' || tt5 == '0') && (tt9 == '0' || tt9 == '0')) {
        disableFun0("Txtbtn2", "Txtbtn3", "Txtbtn4", "Txtbtn6", "Txtbtn7", "Txtbtn8")
    }
    else if ((tt3 == '0' || tt3 == '0') && (tt5 == '0' || tt5 == '0') && (tt7 == '0' || tt7 == '0')) {
        disableFun0("Txtbtn1", "Txtbtn2", "Txtbtn4", "Txtbtn6", "Txtbtn8", "Txtbtn9")
    }
    else if ((tt2 == '0' || tt2 == '0') && (tt5 == '0' || tt5 == '0') && (tt8 == '0' || tt8 == '0')) {
        disableFun0("Txtbtn1", "Txtbtn3", "Txtbtn4", "Txtbtn6", "Txtbtn7", "Txtbtn9")
    }
    else if ((tt4 == '0' || tt4 == '0') && (tt5 == '0' || tt5 == '0') && (tt6 == '0' || tt6 == '0')) {
        disableFun0("Txtbtn1", "Txtbtn2", "Txtbtn3", "Txtbtn7", "Txtbtn8", "Txtbtn9")
    }
    // Checking of Player 0 finish
    // Here, Checking about Tie
    else if ((tt1 == 'X' || tt1 == '0') && (tt2 == 'X' || tt2 == '0') && (tt3 == 'X' || tt3 == '0') &&
        (tt4 == 'X' || tt4 == '0') && (tt5 == 'X' || tt5 == '0') && (tt6 == 'X' || tt6 == '0') &&
        (tt7 == 'X' || tt7 == '0') && (tt8 == 'X' || tt8 == '0') && (tt9 == 'X' || tt9 == '0')) {
        document.getElementById('resut').innerHTML = "Match Tie";
        document.getElementById('turn').innerHTML = "";
    }
    else {
        // Here, Printing Result
        if (flag == 1) {
            document.getElementById('turn').innerHTML = "Player X Turn";
        }
        else {
            document.getElementById('turn').innerHTML = "Player 0 Turn";
        }
        
    }

}

// Here onwards, functions check turn of the player
// and put accordingly value X or 0
flag = 1;
flag1 = 1;
flag2 = 1;
flag3 = 1;
flag4 = 1;
flag5 = 1;
flag6 = 1;
flag7 = 1;
flag8 = 1;
flag9 = 1;

function ticTac_1() {  
    if (flag1 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else 
        ticTac("Txtbtn1");
    flag1 = 0;
}

function ticTac_2() {
    if (flag2 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn2");
    flag2 = 0;
}

function ticTac_3() {
    if (flag3 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn3");
    flag3 = 0;
}

function ticTac_4() {
    if (flag4 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn4");
    flag4 = 0;
}

function ticTac_5() {

    if (flag5 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn5");
    flag5 = 0;

}
function ticTac_6() {
    if (flag6 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn6");
    flag6 = 0;
}

function ticTac_7() {
    if (flag7 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn7");
    flag7 = 0;
}

function ticTac_8() {
    if (flag8 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn8");
    flag8 = 0;
}

function ticTac_9() { 
    if (flag9 == 0)
        document.getElementById('invalid').innerHTML = "Invalid Move";
    else
        ticTac("Txtbtn9");
    flag9 = 0;
}

function reset() {
    location.reload();
    document.getElementById('Txtbtn1').value = '';
    document.getElementById("Txtbtn2").value = '';
    document.getElementById("Txtbtn3").value = '';
    document.getElementById("Txtbtn4").value = '';
    document.getElementById("Txtbtn5").value = '';
    document.getElementById("Txtbtn6").value = '';
    document.getElementById("Txtbtn7").value = '';
    document.getElementById("Txtbtn8").value = '';
    document.getElementById("Txtbtn9").value = '';
}

function ticTac(txtBox) {
    if (flag == 1) {
        document.getElementById(txtBox).value = "X";
        document.getElementById('invalid').innerHTML = "";
        flag = 0;
    }
    else {
        document.getElementById(txtBox).value = "0";
        document.getElementById('invalid').innerHTML = "";
        flag = 1;
    }
}

function disableFun0(txtBox1, txtBox2, txtBox3, txtBox4, txtBox5, txtBox6) {
    document.getElementById(txtBox1).disabled = true;
    document.getElementById(txtBox2).disabled = true;
    document.getElementById(txtBox3).disabled = true;
    document.getElementById(txtBox4).disabled = true;
    document.getElementById(txtBox5).disabled = true;
    document.getElementById(txtBox6).disabled = true; 
    document.getElementById("resut").innerHTML = "Player 0 won";
    document.getElementById('turn').innerHTML = "";
    document.getElementById('invalid').innerHTML = "";
}

function disableFunX(txtBox1, txtBox2, txtBox3, txtBox4, txtBox5, txtBox6) {
   document.getElementById(txtBox1).disabled = true;
    document.getElementById(txtBox2).disabled = true;
    document.getElementById(txtBox3).disabled = true;
    document.getElementById(txtBox4).disabled = true;
    document.getElementById(txtBox5).disabled = true;
    document.getElementById(txtBox6).disabled = true;
    document.getElementById("resut").innerHTML = "Player X won";
    document.getElementById('turn').innerHTML = "";
    document.getElementById('invalid').innerHTML = "";
}