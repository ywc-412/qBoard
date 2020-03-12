$(function(){
	var len = 0;
	$('#email-compose-editor').keyup(function(e){
		var strChk = $('#email-compose-editor').val();
		
		$('#lengthChk').html(strChk.length);
	});
	
	
	console.log('uploadAjax.js');
	
	// 업로드 이벤트 start
	$(document).on("change", "input[type=file]", function(){
		
		var formData = new FormData();
		var inputFile = $("input[name='uploadedFile']");
		var files = inputFile[0].files;
		
		for(var i=0; i<files.length; i++){
			formData.append("uploadFile", files[i]);
		}
		
		$('#fileInputAppendHere').html('');
		$.ajax({
			url : '/uploadAjaxAction',
			processData : false,
			contentType : false,
			data : formData,
			type : 'post',
			dataType : 'json',
			success : function(result){
				$.each(result, function(index, item){ 
					console.log(item.uploadPath);
					$('#fileInputAppendHere').append(
						'<li class="float-left mr-md-3" data-uploadpath="'+item.uploadPath+'" data-uuid="'+item.uuid+'" data-filename="'+item.fileName+'">' + item.fileName + '</li>'
					);
				});
			}
		});	
	});
	// 업로드 이벤트 end
	
	
	// 등록 이벤트 start
	$('#registerQuestion').on("click", function(e){
		e.preventDefault();
		
		var title = $('#title').val();
		var textArea = $('#email-compose-editor').val();
		
		// 공백 처리..
		if(!title || !textArea){
			alert('제목 또는 내용을 입력해주세요!');
			return;
		}
		
		var resultTitle = removeBad(title);
		var resultTextArea = removeBad(textArea);
		
		var str = "";
		
		$('.uploadResult li').each(function(index, obj){
			var jobj = $(obj);
			str += '<input type="hidden" name="attachList['+index+'].fileName" value="'+ jobj.data("filename") +'">';
			str += '<input type="hidden" name="attachList['+index+'].uuid" value="'+ jobj.data("uuid") +'">';
			str += '<input type="hidden" name="attachList['+index+'].uploadPath" value="'+ jobj.data("uploadpath") +'">';
		});
		
		var registerForm = $('#registerForm');
		
		registerForm.append('<input type="hidden" name="title" value="'+ resultTitle +'">' +
							'<input type="hidden" name="content" value="'+ resultTextArea +'">' + str).submit();
	});
	// 등록 이벤트 end
	
})