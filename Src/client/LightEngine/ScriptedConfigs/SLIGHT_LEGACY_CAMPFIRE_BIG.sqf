// ======================================================
// Copyright (c) 2017-2025 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

regScriptEmit(SLIGHT_LEGACY_CAMPFIRE_BIG)
	[
		"lt",
		[["randomize_value_vec3",["setLightColor",[ [0.9,0.45,0.2],[1,0.45,0.3] ], [.1,.1],true]],["randomize_value_vec3",["setLightAmbient",[ [0.15,0.05,0],[0.17,0.05,0] ], [.1,.1], true]],["randomize_value_float",["setLightIntensity",[506.25,625.0],[.1,.1], true]]],
		_emitAlias("Свет")
		["linkToSrc",[-0.1,0,-0.05]],
		["setLightColor",[1,0.65,0.4]],
		["setLightAmbient",[0.15,0.05,0]],
		["setLightIntensity",506.25],
		["setLightAttenuation",[0,0,0,0,10.5,15]]
	]
	,[
		"pt",
		[["loop_sound",["fire\campfire",null,10,3]]],
		_emitAlias("Огонь")
		["linkToLight",[-0.1,0,-0.05]],
		["setParticleParams",[["\A3\data_f\ParticleEffects\Universal\Universal",16,10,32,1],"","Billboard",3,0.25,[0,0,0],[0,0,0.7],0,0.05,0.04,0.05,[0.54,0],[[1,1,1,-100],[1,1,1,-100],[0,0,0,0]],[1],0,0,"","","",0,false,0,[[0,0,0,0]]]],
		["setParticleRandom",[0.15,[0.01,0.01,0.15],[0.04,0.04,0.2],0,0.04,[0.1,0.1,0.1,0],0,0,1,0]],
		["setParticleCircle",[0,[0,0,0]]],
		["setDropInterval",0.022]
	]
	,[
		"pt",
		null,
		_emitAlias("Дым")
		["linkToLight",[-0.1,0,-0.05]],
		["setParticleParams",[["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,7,48,1],"","Billboard",1,5,[0,0,0],[0,0,0.6],0,0.05,0.04,0.1,[0.15,3],[[0.1,0.1,0.1,0.06],[0.2,0.2,0.2,0.04],[0.2,0.2,0.2,0.02],[0.3,0.3,0.3,0.01],[0.4,0.4,0.4,0.005]],[1.5,0.5],0.4,0.02,"","","",0,false,-1,[]]],
		["setParticleRandom",[1.5,[0.08,0.08,0.04],[0.08,0.08,0.1],10,0.1,[0,0,0,0],0.1,0.01,1,0]],
		["setParticleCircle",[0,[0,0,0]]],
		["setDropInterval",0.065]
	]
	,[
		"pt",
		null,
		_emitAlias("Искры")
		["linkToLight",[0,0,-0.02]],
		["setParticleParams",[["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,2,0],"","Billboard",1,0.5,[0,0,0],[0,0,0.01],1,1.05,0.88,0.02,[0.03,0.03,0.03,0.03,0.03,0.02,0.02,0.02,0.02,0],[[0.662477,0.553565,0.3,-6.5],[0.84679,0.587077,0.3,-6],[0.637344,0.448842,0.3,-5.5],[1,0.499109,0.3,-4.5],[0.930569,0.553565,0.3,-6.5],[0.779767,0,0,1]],[400,100],0.05,0.2,"","","",0,false,0,[[0,0,0,0]]]],
		["setParticleRandom",[2.9,[0,0,0],[0.3,0.3,0.3],1,0.004,[0,0.15,0.15,0],1.07,0.0005,360,0]],
		["setParticleCircle",[0,[0,0,0]]],
		["setDropInterval",0.011]
	]
	,[
		"pt",
		null,
		_emitAlias("Преломление")
		["linkToLight",[-0.1,0,-0.05]],
		["setParticleParams",[["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1,0],"","Billboard",1,2,[0,0,0],[0,0,0.6],0,0.05,0.04,0.05,[0.2,1.8,2.6],[[0.6,0.6,0.6,0.2],[0.7,0.7,0.7,0.2],[0.8,0.8,0.8,0.1],[1,1,1,0]],[1.5,0.5],0.4,0.09,"","","",0,false,0,[[0,0,0,0]]]],
		["setParticleRandom",[0.3,[0.1,0.1,0.2],[0.05,0.05,0.5],0,0.3,[0,0,0,0.1],0.2,0.05,1,0]],
		["setParticleCircle",[0,[0,0,0]]],
		["setDropInterval",0.1]
	]
endScriptEmit