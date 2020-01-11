/**
 * 
 */

function infoConfirm() {
	if (document.reg_frm.id.value.length == 0) {
		alert("ID should be input");
		reg_frm.id.focus();
		return;
	}

	if (document.reg_frm.id.value.length < 4) {
		alert("ID should be longer than 4 characters.");
		reg_frm.id.focus();
		return;
	}

	if (document.reg_frm.pw.value.length == 0) {
		alert("Password should be input");
		reg_frm.pw.focus();
		return;
	}

	if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("Both password should be same.");
		reg_frm.pw.focus();
		return;
	}

	if (document.reg_frm.name.value.length == 0) {
		alert("Name should be input");
		reg_frm.name.focus();
		return;
	}

	if (document.reg_frm.eMail.value.length == 0) {
		alert("eMail should be input");
		reg_frm.id.focus();
		return;
	}

	if (document.reg_frm.address.value.length == 0) {
		alert("Address should be input");
		reg_frm.eMail.focus();
		return;
	}

	document.reg_frm.submit();
}

function updateInfoConfirm() {
	if (document.reg_frm.pw.value == "") {
		alert("Password should be input");
		document.reg_frm.pw.focus();
		return;
	}

	if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("Both password should be same.");
		reg_frm.pw.focus();
		return;
	}

	if (document.reg_frm.eMail.value.length == 0) {
		alert("eMail should b input.");
		reg_frm.eMail.focus();
		return;
	}

	document.reg_frm.submit();
}