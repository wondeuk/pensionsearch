function agreeCheck() {
	//체크박스 확인뒤 합격이면 다음 페이지로
	//기본 이벤트를 중지시키는 명령
	event.preventDefault();

	var cb1 = document.querySelector("#cb1");
	var cb2 = document.querySelector("#cb2");

	if (!cb1.checked) {
		alert("이용약관에 동의하셔야만 가입이 됩니다.")
	} else if (!cb2.checked) {
		alert("개인정보 수집 및 이용에 동의하셔야만 가입이 됩니다.")
	} else {
		var form = document.querySelector("#next01");
		form.submit();
	}
}




function idCheck() {
	var input = document.querySelector("#member_id");
	var regex = /^[\w]{6,15}$/g;
	console.log("s");
	if (regex.test(input.value)) {
		input.style = "border:2px solid blue";
		return true;
	} else {
		input.style = "border:2px solid red";
		return false;
	}
}

//function idCheck(){
//	 
//    var id = document.getElementById("userId").value;
//	var regex = /^[a-z]+[a-z0-9]{5,19}$/g;
//
//    if (!id) {
//        alert("아이디를 입력하지 않았습니다.");
//        return false;
//    }else if(!regex.test(id)){ 
//        alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
//        return false;
//    } else{
//        var param=id;
//        console.log("form실행전")
//        var target = document.querySelector("input[name=id]");
//        target.value=id;
//        
//    	var form = document.querySelector("#checkForm");
//    	form.submit();
//    }
//}

function pw1Check() {
	console.log("s");
	var input = document.querySelector("#pw1");
	var regex = /^[\w]{6,15}$/g;
	if (regex.test(input.value)) {
		input.style = "border:2px solid blue";
		return true;
	} else {
		input.style = "border:2px solid red";
		return false;
	}
}

function pw2Check() {
	var pw = document.querySelector("#pw1");
	var pw2 = document.querySelector("#pw2");

	if (pw.value === pw2.value) {
		pw2.style = "border:2px solid blue";
		return true;
	} else {
		pw2.style = "border:2px solid red";
		return false;
	}
}

function nameCheck() {
	var input = document.querySelector("input[name=name]");
	var regex = /^[가-힣]{2,7}$/g;
	if (regex.test(input.value)) {
		input.style = "border:2px solid blue";
		return true;
	} else {
		input.style = "border:2px solid red";
		return false;
	}
}

        function email01Check() {
            var input = document.querySelector("input[name=email01]");
            var regex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        function email02Check() {
            var input = document.querySelector("input[name=email02]");
            var regex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/g;
//            var regex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/g;

            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }


        
        function phone01Check() {
            var input = document.querySelector("input[name=phone01]");
            var regex = /^[0-9]{2,4}$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        function phone02Check() {
            var input = document.querySelector("input[name=phone02]");
            var regex = /^[0-9]{3,5}$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        function phone03Check() {
            var input = document.querySelector("input[name=phone03]");
            var regex = /^[0-9]{3,5}$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        function mobile02Check() {
            var input = document.querySelector("input[name=mobile02]");
            var regex = /^[0-9]{3,5}$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        function mobile03Check() {
            var input = document.querySelector("input[name=mobile03]");
            var regex = /^[0-9]{3,5}$/g;
            if (regex.test(input.value)) {
                input.style = "border:2px solid blue";
                return true;
            } else {
                input.style = "border:2px solid red";
                return false;
            }
        }
        
        
        
        
        function addressCheck3() {
        	   var input = document.querySelector("#sample6_address2");
        	   var regex = /^[가-힣]{2,7}$/g;
        	   console.log("s");
        	   if (regex.test(input.value)) {
        	      input.style = "border:2px solid blue";
        	      return true;
        	   } else {
        	      input.style = "border:2px solid red";
        	      return false;
        	   }
        	}
        
        function cnameCheck() {
        	   var input = document.querySelector("#cname");
        	   var regex = /^[가-힣]{2,7}$/g;
        	   console.log("s");
        	   if (regex.test(input.value)) {
        	      input.style = "border:2px solid blue";
        	      return true;
        	   } else {
        	      input.style = "border:2px solid red";
        	      return false;
        	   }
        	}

        function cnumberCheck() {
     	   var input = document.querySelector("#crn");
     	   var regex = /^[0-9]{8,12}$/g;
     	   if (regex.test(input.value)) {
     	      input.style = "border:2px solid blue";
     	      return true;
     	   } else {
     	      input.style = "border:2px solid red";
     	      return false;
     	   }
     	}
        
        function domainCheck() {
     	   var input = document.querySelector("input[name=domain]");
     	  var regex = /^(((http(s?))\:\/\/)?)([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/;
     	   if (regex.test(input.value)) {
     	      input.style = "border:2px solid blue";
     	      return true;
     	   } else {
     	      input.style = "border:2px solid red";
     	      return false;
     	   }
     	}
        
        
        
        
        
        
        
        
        
        
        
        
        
//        function openIdChk(){
//        	window.name = "parentForm";
//        	window.open("idCheckForm",
//        			"chkForm", "width=500, height=300, resizable = no, scrollbars = no");
//        }
//        
//        function inputIdChk(){
//        	document.userInfo.idDuplication.value = "idUncheck";
//        }
//        
//        function pValue(){
//        	console.log("pValue")
//        	document.getElementById("userId").value = opener.document.userInfo.id.value;
//        }
//        
//        
//        
//        var httpRequest = null;
//        
//        // httpRequest 객체 생성
//        function getXMLHttpRequest(){
//            var httpRequest = null;
//        
//            if(window.ActiveXObject){
//                try{
//                    httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
//                } catch(e) {
//                    try{
//                        httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
//                    } catch (e2) { httpRequest = null; }
//                }
//            }
//            else if(window.XMLHttpRequest){
//                httpRequest = new window.XMLHttpRequest();
//            }
//            return httpRequest;    
//        }
//        
//        
//        // 회원가입창의 아이디 입력란의 값을 가져온다.
//        function pValue(){
//            document.getElementById("userId").value = opener.document.userInfo.id.value;
//        }
//        
//        // 아이디 중복체크
//       
//        
//        function callback(){
//            if(httpRequest.readyState == 4){
//                // 결과값을 가져온다.
//                var resultText = httpRequest.responseText;
//                if(resultText == 0){
//                    alert("사용할수없는 아이디입니다.");
//                    document.getElementById("cancelBtn").style.visibility='visible';
//                    document.getElementById("useBtn").style.visibility='hidden';
//                    document.getElementById("msg").innerHTML ="";
//                } 
//                else if(resultText == 1){ 
//                    document.getElementById("cancelBtn").style.visibility='hidden';
//                    document.getElementById("useBtn").style.visibility='visible';
//                    document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
//                }
//            }
//        }
//        
//        // 사용하기 클릭 시 부모창으로 값 전달 
//        function sendCheckValue(){
//            // 중복체크 결과인 idCheck 값을 전달한다.
//            opener.document.userInfo.idDuplication.value ="idCheck";
//            // 회원가입 화면의 ID입력란에 값을 전달
//            opener.document.userInfo.id.value = document.getElementById("userId").value;
//            
//            if (opener != null) {
//                opener.chkForm = null;
//                self.close();
//            }    
//        }    



        
        
        
        


function sendCheck() {
	//폼의 전송을 중지하고 검사한 뒤에 합격이면 전송한다

	//기본 이벤트를 중지시키는 명령
	event.preventDefault();
	console.log("sendCheck!");
	//검사
	var result = idCheck() && pw1Check() &&
		pw2Check() && nameCheck();
	if (!result) {
		alert("형식에 맞게 작성해 주세요");
		return;
	}
	//전송
	var form = document.querySelector("#next02");
	form.submit();
}
