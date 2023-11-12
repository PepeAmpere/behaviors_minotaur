#include "\vbs2\basic_defines.hpp"
#define __CurrentDir__ \vbs2\customer\plugins\behaviors_minotaur\

//Class necessary for VBS to load the new addon correctly
class CfgPatches
{
	class vbs2_vbs_plugins_behaviors_minotaur
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.10;
		requiredAddons[] = {
			vbs2_editor, 
			vbs2_people,
			vbs2_vbs_plugins_ai_core_public
		};
		modules[] =
		{
			vbs_core_content_module
		};
	};
};

// Adds btset to list of btsets which are loaded automatically
class CfgBehaviorTrees
{
	class behaviors_minotaur //this is an arbitrary className, it needs to be unique though
	{
		path = "\vbs2\customer\plugins\behaviors_minotaur\data\behaviors_minotaur\behaviors_minotaur.btset"; //This is the relative path to the BT-set file to load
		name = "behaviors_minotaur"; // This is the btset name duplicated in the configuration
	};
};

class vbs_functions_base;
class CfgFunctions
{
	// Macro to build a function in sripts top folder
	#define MAKE_MINOTAUR_FUNCTION(functionName)                                 \
	class fn_vbs_behaviors_minotaur_##functionName : vbs_functions_base                     \
	{                                                                       \
		path = __CurrentDir__\data\scripts\fn_vbs_behaviors_minotaur_##functionName##.sqf;  \
	}
	
	MAKE_MINOTAUR_FUNCTION(advance);
	MAKE_MINOTAUR_FUNCTION(patrol);
};