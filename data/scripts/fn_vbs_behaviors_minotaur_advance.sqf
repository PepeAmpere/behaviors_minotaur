/**
 *	Copyright © 2023 Bohemia Interactive Simulations - support@BISimulations.com
 *
 */

privateAll;

_receiver = _this select 0;
_position = _this select 1;

_receiver receiveMessage [
	"NewOrder",
	[
		"orderName", "Advance",
		"position", _position
	]
];