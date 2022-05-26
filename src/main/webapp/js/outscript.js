/**
 * 
 */
var arr;
function proc1() {
	arr = ["똥", 82, "goaway", true, 1.234];

	print('d1');

}
function proc2() {
	arr = new Array("수박", "참외", "포도", "자두");

	print('d2');
}
function proc3() {
	arr = new Array();
	arr[0] = "송백경";
	arr[1] = "오진환";
	arr[2] = "teddy";
	arr[3] = "denny";

	//d3공간에 표현
	print('d3');
}

function print(d) {
	var arrData = "";
	for (var i = 0; i < arr.length; i++) {
		arrData += arr[i] + '-';
	}
	document.getElementById(d).innerText = arrData;

}

