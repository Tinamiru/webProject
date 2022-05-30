function proc1() {
	let sum = 0;
	for (let i = 1; i <= 10; i++) {
		sum += i;
	}
	document.getElementsByTagName('div')[0].innerText = sum;
}
function proc2() {
	let sum = 0;
	for (let i = 0; i <= 200; i += 2) {
		sum += i;
	}
	document.getElementsByTagName('div')[1].innerText = sum;
}
function proc3() {
	let sum = 0;
	let str = "";
	while (true) {
		let num = parseInt(prompt("더할 값을 입력 하세요"));
		if (num == 0) {
			break;
		} else {
			sum += num;
			str += num + " ";
		}
	}
	let result = `입력한 값 : ${str} <br>`
	result += `결과 : ${sum}`
	document.getElementsByTagName('div')[2].innerHTML = result;
}

function proc4() {
	let sum = "";
	for(i=1; i<=10; i++) {
		for(k=1; k<=10; k++) {
			if ((i+k)%3 != 0) {
				continue;
			}
				sum += `${i} + ${k} = ${i+k} <br>`;
		 }
	}
	document.getElementsByTagName('div')[3].innerHTML = sum;
}

function proc5() {
	let sum = "";
	for (let i = 1; i < 100; i++) {
		if (i % 2 == 0 && i % 3 == 0) {
			sum += `${i} `
		}
	}
	document.getElementsByTagName('div')[4].innerText = sum;
}

function proc6(){
	let str1 = "100이상의 값들 <br>";
	let str2 = "100미만의 값들 <br>";

	while(true){
		let a = parseInt(prompt("값 1 입력"));
		let b = parseInt(prompt("값 2 입력"));
		
		if(a == 0 && b == 0) break;
		
		let sum = a + b;	//100이상? 미만?
		if(sum < 100){
			//100미만의 값을 출력
			str2 += `${a} ${b} <br>`;
			continue;
		}
		//100이상의 값을 출력
		str1 += `${a} ${b} <br>`;
	}	
	document.getElementsByTagName('div')[5].innerHTML = str1;
	document.getElementsByTagName('div')[5].innerHTML += str2;
}
