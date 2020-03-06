function removeBad(str){
	str = str.replace(/\&/g, "&amp;");
	return str;
}