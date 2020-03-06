var reply = (function() {

	function getList(rno, qno, callback, error) {
		$.getJSON("/replyComment/" + qno + "/" + rno + ".json", 
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

	return {
		getList : getList
	};
})();