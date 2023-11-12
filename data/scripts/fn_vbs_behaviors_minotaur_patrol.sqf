/**
 *	Copyright © 2023 Bohemia Interactive Simulations - support@BISimulations.com
 *
 */

privateAll;

_receiver = _this select 0;

_receiver receiveMessage [
	"NewOrder",
	[
		"orderName", "Patrol"
	]
];