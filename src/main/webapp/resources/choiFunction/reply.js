var reply = (function() {
	
	function getList(param, callback, error) {
		$.getJSON("/replyComment/" + param.qno + "/" + param.rno + "/" + param.amount + "/" + param.pageNum + ".json", 
			function(data) {
				if (callback) {
					// 갯수, 리스트
					callback(data);
					// callback(data);
				}
			}).fail(function(xhr, status, err) {
				if (error) {
					error();
				}	
		});
	}
	
	function updateReplyComment(content, commentNo, callback, error){
		$.ajax({
			type : 'PUT',
			url : '/replyComment/update/' + content + "/" + commentNo,
			data : JSON.stringify({content, commentNo}),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	
	function updateDelete(commentNo, callback, error){
		$.ajax({
			type : 'PUT',
			url : '/replyComment/deleteUpdate/' + commentNo,
			data : JSON.stringify(commentNo),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function addReplyComment(param, callback, error){
		$.ajax({
			type: 'post',
			url : '/replyComment/new',
			data : JSON.stringify(param),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function addInfiniteReplyComment(param, callback, error){
		$.ajax({
			type : 'post',
			url : '/replyComment/infinite/new',
			data : JSON.stringify(param),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			}, 
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	return {
		getList : getList,
		updateReplyComment : updateReplyComment,
		addReplyComment : addReplyComment,
		addInfiniteReplyComment : addInfiniteReplyComment,
		updateDelete : updateDelete
	};
})();