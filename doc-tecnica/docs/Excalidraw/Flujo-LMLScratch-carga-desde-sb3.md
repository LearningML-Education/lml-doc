---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
Deserialize
Aquí llega el atributo lmlModel que fue almacenado en el sb3 y se añade al localStorage. ^LWTUhUYI

LoadModel

Carga el modelo con LMLModelFactory.load().
Esta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.
En este caso es nulo ^iBwDRuVc

Se abre sb3 con modelo desde el menú Archivos ^VRUOb0I8

Se carga el lmlModel del localStorage  ^l3FEplAo

Se crea un modelo del tipo definido en lmlModel.model.metadata.modelAlgorithm ^5W2BF4ji

Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los datos del localStorage ^wT13DayD

Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata.

ATENCIÓN: este paso es redundante, pues lo que se guarda en localStorage es lo mismo que ya había, pero de esta manera se mantiene el flujo general y no afecta al funcionamiento. ^80IuYQsd

runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en localStorage ^9lHz4Z8c

Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type ^0Q516JFH

runtime.lmlModel = modelo cargado desde localStorage (entrenado, con etiquetas) ^piLqCKfl

%%
# Drawing
```json
{
	"type": "excalidraw",
	"version": 2,
	"source": "https://github.com/zsviczian/obsidian-excalidraw-plugin/releases/tag/2.1.0",
	"elements": [
		{
			"type": "rectangle",
			"version": 195,
			"versionNonce": 1530360091,
			"isDeleted": false,
			"id": "5zLeBFc3XKyqRdQ9x6Vrm",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -450.5,
			"y": -103.203125,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 296,
			"height": 160,
			"seed": 1187488859,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "LWTUhUYI"
				},
				{
					"id": "twq3lN5XG98W1E_hKDvI_",
					"type": "arrow"
				},
				{
					"id": "FmTxxqrTyV98i2SvHjFpS",
					"type": "arrow"
				}
			],
			"updated": 1719811183733,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 259,
			"versionNonce": 144795835,
			"isDeleted": false,
			"id": "LWTUhUYI",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -444.0598449707031,
			"y": -85.703125,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 283.11968994140625,
			"height": 125,
			"seed": 883450107,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719813039883,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Deserialize\nAquí llega el atributo\nlmlModel que fue almacenado\nen el sb3 y se añade al\nlocalStorage.",
			"rawText": "Deserialize\nAquí llega el atributo lmlModel que fue almacenado en el sb3 y se añade al localStorage.",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "5zLeBFc3XKyqRdQ9x6Vrm",
			"originalText": "Deserialize\nAquí llega el atributo lmlModel que fue almacenado en el sb3 y se añade al localStorage.",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 267,
			"versionNonce": 357710677,
			"isDeleted": false,
			"id": "YpjijiOVB4RjxCVvnBdm5",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -513.5,
			"y": 134.796875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 285,
			"seed": 424028085,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "iBwDRuVc"
				},
				{
					"id": "FmTxxqrTyV98i2SvHjFpS",
					"type": "arrow"
				},
				{
					"id": "nnMACyzzl_cfG-txDJO8z",
					"type": "arrow"
				}
			],
			"updated": 1719819093459,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 741,
			"versionNonce": 1983674453,
			"isDeleted": false,
			"id": "iBwDRuVc",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -502.1797790527344,
			"y": 139.796875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 404.35955810546875,
			"height": 275,
			"seed": 770795797,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811176029,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "LoadModel\n\nCarga el modelo con\nLMLModelFactory.load().\nEsta función recibe desde el\nruntime.modelZipContent, que será nulo si\nno se ha leído desde disco ningún modelo,\no contendrá los ficheros del archivo zip\nque contiene al modelo si se ha cargado\ndesde el menú algún modelo.\nEn este caso es nulo",
			"rawText": "LoadModel\n\nCarga el modelo con LMLModelFactory.load().\nEsta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.\nEn este caso es nulo",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "YpjijiOVB4RjxCVvnBdm5",
			"originalText": "LoadModel\n\nCarga el modelo con LMLModelFactory.load().\nEsta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.\nEn este caso es nulo",
			"lineHeight": 1.25
		},
		{
			"type": "diamond",
			"version": 2,
			"versionNonce": 705095797,
			"isDeleted": false,
			"id": "Qai-5Ngvy5ky3u9aWr92l",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -263.5,
			"y": 135.296875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1,
			"height": 4,
			"seed": 1458574101,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719810911212,
			"link": null,
			"locked": false
		},
		{
			"type": "arrow",
			"version": 122,
			"versionNonce": 1794707893,
			"isDeleted": false,
			"id": "twq3lN5XG98W1E_hKDvI_",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -311.7405542121194,
			"y": -196.17534722222223,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.4158766152328894,
			"height": 78.47222222222217,
			"seed": 1839130293,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819174879,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "65vKauMr7HC53KyMf_Sze",
				"gap": 19.68867288072306,
				"focus": 0.01797449023715281
			},
			"endBinding": {
				"elementId": "5zLeBFc3XKyqRdQ9x6Vrm",
				"gap": 14.500000000000028,
				"focus": -0.04094934658250315
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1.4158766152328894,
					78.47222222222217
				]
			]
		},
		{
			"type": "arrow",
			"version": 115,
			"versionNonce": 2116393461,
			"isDeleted": false,
			"id": "FmTxxqrTyV98i2SvHjFpS",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -306.7366608191002,
			"y": 73.29687500000001,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.6747679456394735,
			"height": 45.99999999999996,
			"seed": 1713961275,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819174876,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "5zLeBFc3XKyqRdQ9x6Vrm",
				"gap": 16.5,
				"focus": 0.018911635383669804
			},
			"endBinding": {
				"elementId": "YpjijiOVB4RjxCVvnBdm5",
				"gap": 15.5,
				"focus": -0.04512776942683485
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-0.6747679456394735,
					45.99999999999996
				]
			]
		},
		{
			"type": "rectangle",
			"version": 235,
			"versionNonce": 1084785941,
			"isDeleted": false,
			"id": "65vKauMr7HC53KyMf_Sze",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -458.8530701754385,
			"y": -375.8640201029453,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 296,
			"height": 160,
			"seed": 1392699291,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "VRUOb0I8"
				},
				{
					"id": "twq3lN5XG98W1E_hKDvI_",
					"type": "arrow"
				}
			],
			"updated": 1719812983872,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 331,
			"versionNonce": 2012209211,
			"isDeleted": false,
			"id": "VRUOb0I8",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -427.6729325411612,
			"y": -320.8640201029453,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 233.6397247314453,
			"height": 50,
			"seed": 1998142523,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719813006997,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se abre sb3 con modelo\ndesde el menú Archivos",
			"rawText": "Se abre sb3 con modelo desde el menú Archivos",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "65vKauMr7HC53KyMf_Sze",
			"originalText": "Se abre sb3 con modelo desde el menú Archivos",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 490,
			"versionNonce": 211767899,
			"isDeleted": false,
			"id": "UiJD0WdxnOurMazA0PhYX",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -510.0197368421052,
			"y": 511.70436604501856,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 818884853,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "l3FEplAo"
				},
				{
					"id": "nnMACyzzl_cfG-txDJO8z",
					"type": "arrow"
				},
				{
					"id": "eppu9ufStiEPsO4YtLaU0",
					"type": "arrow"
				}
			],
			"updated": 1719819097780,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1118,
			"versionNonce": 237481717,
			"isDeleted": false,
			"id": "l3FEplAo",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -487.4195171155427,
			"y": 550.7043660450186,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 381.799560546875,
			"height": 25,
			"seed": 436685397,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719813175152,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se carga el lmlModel del localStorage ",
			"rawText": "Se carga el lmlModel del localStorage ",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "UiJD0WdxnOurMazA0PhYX",
			"originalText": "Se carga el lmlModel del localStorage ",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 725,
			"versionNonce": 790832597,
			"isDeleted": false,
			"id": "nNBWFdsRM4cUIhLHxL3b9",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -507.3530701754387,
			"y": 722.3710327116853,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 2041692315,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "5W2BF4ji"
				},
				{
					"id": "eppu9ufStiEPsO4YtLaU0",
					"type": "arrow"
				},
				{
					"id": "BVRLCvatkM86dYZr9HPZD",
					"type": "arrow"
				}
			],
			"updated": 1719819100016,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1668,
			"versionNonce": 1690777109,
			"isDeleted": false,
			"id": "5W2BF4ji",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -483.9228943941887,
			"y": 748.8710327116853,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 380.1396484375,
			"height": 50,
			"seed": 1954870587,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819028915,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se crea un modelo del tipo definido en\nlmlModel.model.metadata.modelAlgorithm",
			"rawText": "Se crea un modelo del tipo definido en lmlModel.model.metadata.modelAlgorithm",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "nNBWFdsRM4cUIhLHxL3b9",
			"originalText": "Se crea un modelo del tipo definido en lmlModel.model.metadata.modelAlgorithm",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 714,
			"versionNonce": 227919797,
			"isDeleted": false,
			"id": "7-M6BEXtXSpKH1CS-UNny",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -506.0197368421053,
			"y": 907.7043660450187,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 85,
			"seed": 768333179,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "wT13DayD"
				},
				{
					"id": "BVRLCvatkM86dYZr9HPZD",
					"type": "arrow"
				},
				{
					"id": "8LMSqaZy5rWcNA-AWeYS_",
					"type": "arrow"
				}
			],
			"updated": 1719819110731,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1802,
			"versionNonce": 1371232181,
			"isDeleted": false,
			"id": "wT13DayD",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -482.90953786749594,
			"y": 912.7043660450187,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 380.77960205078125,
			"height": 75,
			"seed": 1246326299,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819077428,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se crea el modelo concreto, es decir\nentrenado con los datos que vienen en\nlos datos del localStorage",
			"rawText": "Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los datos del localStorage",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "7-M6BEXtXSpKH1CS-UNny",
			"originalText": "Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los datos del localStorage",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 31,
			"versionNonce": 1072556149,
			"isDeleted": false,
			"id": "nnMACyzzl_cfG-txDJO8z",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -284.5197368421052,
			"y": 443.20436604501856,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 58.666666666666686,
			"seed": 343994043,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819174879,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "YpjijiOVB4RjxCVvnBdm5",
				"gap": 23.40749104501856,
				"focus": -0.07250708739060793
			},
			"endBinding": {
				"elementId": "UiJD0WdxnOurMazA0PhYX",
				"gap": 9.833333333333314,
				"focus": 0.05620608899297423
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					58.666666666666686
				]
			]
		},
		{
			"type": "arrow",
			"version": 42,
			"versionNonce": 345998837,
			"isDeleted": false,
			"id": "eppu9ufStiEPsO4YtLaU0",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -292.5197368421052,
			"y": 627.2043660450186,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 8,
			"height": 82.66666666666663,
			"seed": 652025717,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819174879,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "UiJD0WdxnOurMazA0PhYX",
				"gap": 12.5,
				"focus": 0.010039864166543639
			},
			"endBinding": {
				"elementId": "nNBWFdsRM4cUIhLHxL3b9",
				"gap": 12.500000000000114,
				"focus": 0.07106648949259388
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					8,
					82.66666666666663
				]
			]
		},
		{
			"type": "arrow",
			"version": 31,
			"versionNonce": 47604597,
			"isDeleted": false,
			"id": "BVRLCvatkM86dYZr9HPZD",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -287.18640350877195,
			"y": 841.8710327116852,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 2.6666666666666288,
			"height": 57.33333333333337,
			"seed": 1361644603,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819174880,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "nNBWFdsRM4cUIhLHxL3b9",
				"gap": 16.499999999999886,
				"focus": -0.045528805586973406
			},
			"endBinding": {
				"elementId": "7-M6BEXtXSpKH1CS-UNny",
				"gap": 8.500000000000114,
				"focus": 0.0013670785890314819
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					-2.6666666666666288,
					57.33333333333337
				]
			]
		},
		{
			"type": "arrow",
			"version": 117,
			"versionNonce": 1224144507,
			"isDeleted": false,
			"id": "8LMSqaZy5rWcNA-AWeYS_",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -65.85307017543863,
			"y": 952.537699378352,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 178.66666666666669,
			"height": 714.0000000000007,
			"seed": 731894299,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819224819,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "7-M6BEXtXSpKH1CS-UNny",
				"focus": 1.0139006631298813,
				"gap": 13.166666666666657
			},
			"endBinding": {
				"elementId": "KVMcDlOsLWd24EhGOik-s",
				"focus": 1.0226315515673876,
				"gap": 21.2346491228069
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					178.66666666666669,
					-714.0000000000007
				]
			]
		},
		{
			"type": "rectangle",
			"version": 894,
			"versionNonce": 985155029,
			"isDeleted": false,
			"id": "qUFyi7MHOb5DIFB_PoX12",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 126.24561403508756,
			"y": 712.343418585072,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 235,
			"seed": 1446842907,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "80IuYQsd"
				},
				{
					"id": "0xavGiE1NKSVoMYYsnS6y",
					"type": "arrow"
				}
			],
			"updated": 1719819287727,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1660,
			"versionNonce": 1368171925,
			"isDeleted": false,
			"id": "80IuYQsd",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 131.28586672063446,
			"y": 717.343418585072,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 416.91949462890625,
			"height": 225,
			"seed": 380245691,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819295521,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se guarda en el localStorage la misma\nestructura que hay en\nruntime.lmlModelMetadata.\n\nATENCIÓN: este paso es redundante,\npues lo que se guarda en localStorage es\nlo mismo que ya había, pero de esta\nmanera se mantiene el flujo general y no\nafecta al funcionamiento.",
			"rawText": "Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata.\n\nATENCIÓN: este paso es redundante, pues lo que se guarda en localStorage es lo mismo que ya había, pero de esta manera se mantiene el flujo general y no afecta al funcionamiento.",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "qUFyi7MHOb5DIFB_PoX12",
			"originalText": "Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata.\n\nATENCIÓN: este paso es redundante, pues lo que se guarda en localStorage es lo mismo que ya había, pero de esta manera se mantiene el flujo general y no afecta al funcionamiento.",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 838,
			"versionNonce": 2067981301,
			"isDeleted": false,
			"id": "GnDKLZFuWUu5MC7A_jbNg",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 130.8245614035086,
			"y": 352.4837694622653,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 407734107,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "9lHz4Z8c"
				},
				{
					"id": "Ss9jBEfAnl1mk6IGfgO1h",
					"type": "arrow"
				},
				{
					"id": "Oq8HRkUyIPOsuR-GXLWiX",
					"type": "arrow"
				}
			],
			"updated": 1719819220591,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1550,
			"versionNonce": 1636605269,
			"isDeleted": false,
			"id": "9lHz4Z8c",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 149.3147652609305,
			"y": 366.4837694622653,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 390.01959228515625,
			"height": 75,
			"seed": 1098507259,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819220591,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModelMetadata = metadatos\nde un modelo text con hyperparámetros\nque venían en localStorage",
			"rawText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en localStorage",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "GnDKLZFuWUu5MC7A_jbNg",
			"originalText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en localStorage",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 1028,
			"versionNonce": 94358331,
			"isDeleted": false,
			"id": "Ss9jBEfAnl1mk6IGfgO1h",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 344.4372070660032,
			"y": 289.9837694622653,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 4.413142680329884,
			"height": 52,
			"seed": 171027611,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819220591,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "KVMcDlOsLWd24EhGOik-s",
				"focus": 0.03933826422870976,
				"gap": 12.83059210526335
			},
			"endBinding": {
				"elementId": "GnDKLZFuWUu5MC7A_jbNg",
				"focus": 0.044923947647683586,
				"gap": 10.5
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					4.413142680329884,
					52
				]
			]
		},
		{
			"type": "rectangle",
			"version": 931,
			"versionNonce": 2018298581,
			"isDeleted": false,
			"id": "r8S8u2Pb9bBiYpy6U41A7",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 129.1798245614034,
			"y": 531.1778484096341,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1176985915,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "0Q516JFH"
				},
				{
					"id": "Oq8HRkUyIPOsuR-GXLWiX",
					"type": "arrow"
				},
				{
					"id": "0xavGiE1NKSVoMYYsnS6y",
					"type": "arrow"
				}
			],
			"updated": 1719819220591,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1624,
			"versionNonce": 913745973,
			"isDeleted": false,
			"id": "0Q516JFH",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 159.21003696374714,
			"y": 545.1778484096341,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 366.9395751953125,
			"height": 75,
			"seed": 784171483,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819220591,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se define el encoder con el valor que\nviene en\nruntime.lmlModelMetadata.data.type",
			"rawText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "r8S8u2Pb9bBiYpy6U41A7",
			"originalText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 483,
			"versionNonce": 1156348027,
			"isDeleted": false,
			"id": "Oq8HRkUyIPOsuR-GXLWiX",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 342.6798245614035,
			"y": 462.6778484096336,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 2.105263157894683,
			"height": 57.8947368421052,
			"seed": 755404411,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819220591,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "GnDKLZFuWUu5MC7A_jbNg",
				"focus": 0.01754663663083143,
				"gap": 7.194078947368325
			},
			"endBinding": {
				"elementId": "r8S8u2Pb9bBiYpy6U41A7",
				"focus": 0.02026085855388133,
				"gap": 10.605263157895251
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					2.105263157894683,
					57.8947368421052
				]
			]
		},
		{
			"type": "arrow",
			"version": 491,
			"versionNonce": 1862807579,
			"isDeleted": false,
			"id": "0xavGiE1NKSVoMYYsnS6y",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 335.31140350877183,
			"y": 643.7304799885809,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 55.17543859649095,
			"seed": 1673856795,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819296545,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "r8S8u2Pb9bBiYpy6U41A7",
				"gap": 9.55263157894683,
				"focus": 0.03451251078515953
			},
			"endBinding": {
				"elementId": "qUFyi7MHOb5DIFB_PoX12",
				"gap": 13.437500000000114,
				"focus": -0.020769135954640385
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					55.17543859649095
				]
			]
		},
		{
			"type": "rectangle",
			"version": 769,
			"versionNonce": 919147675,
			"isDeleted": false,
			"id": "KVMcDlOsLWd24EhGOik-s",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 134.04824561403495,
			"y": 174.15317735700194,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 2037083067,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "piLqCKfl"
				},
				{
					"id": "Ss9jBEfAnl1mk6IGfgO1h",
					"type": "arrow"
				},
				{
					"id": "8LMSqaZy5rWcNA-AWeYS_",
					"type": "arrow"
				}
			],
			"updated": 1719819224387,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1443,
			"versionNonce": 2073705589,
			"isDeleted": false,
			"id": "piLqCKfl",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 147.91845435426936,
			"y": 200.65317735700194,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 399.25958251953125,
			"height": 50,
			"seed": 572275803,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819220591,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModel = modelo cargado desde\nlocalStorage (entrenado, con etiquetas)",
			"rawText": "runtime.lmlModel = modelo cargado desde localStorage (entrenado, con etiquetas)",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "KVMcDlOsLWd24EhGOik-s",
			"originalText": "runtime.lmlModel = modelo cargado desde localStorage (entrenado, con etiquetas)",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 464,
			"versionNonce": 1151420437,
			"isDeleted": true,
			"id": "nXbsUek2GwC9w2qpsHqrw",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 49.333333333333485,
			"y": 134.46354166666663,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 613158779,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "vzniBGvg"
				},
				{
					"id": "8LMSqaZy5rWcNA-AWeYS_",
					"type": "arrow"
				}
			],
			"updated": 1719819214586,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1025,
			"versionNonce": 559589685,
			"isDeleted": true,
			"id": "vzniBGvg",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 65.24355061848976,
			"y": 160.96354166666663,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 395.1795654296875,
			"height": 50,
			"seed": 821192731,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModel = modelo LMLSequential\nlimpio (sin entrenar, sin etiquetas)",
			"rawText": "runtime.lmlModel = modelo LMLSequential limpio (sin entrenar, sin etiquetas)",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "nXbsUek2GwC9w2qpsHqrw",
			"originalText": "runtime.lmlModel = modelo LMLSequential limpio (sin entrenar, sin etiquetas)",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 634,
			"versionNonce": 1191620539,
			"isDeleted": true,
			"id": "4nigHOoHWbcruxXdKk_1s",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 50.59649122807025,
			"y": 657.1477521929824,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1475962229,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "Wke3HgT1"
				}
			],
			"updated": 1719819214586,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1199,
			"versionNonce": 318356117,
			"isDeleted": true,
			"id": "Wke3HgT1",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 72.82670057865622,
			"y": 671.1477521929824,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 382.5395812988281,
			"height": 75,
			"seed": 922152661,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se guarda en el localStorage la misma\nestructura que hay en\nruntime.lmlModelMetadata",
			"rawText": "Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata ",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "4nigHOoHWbcruxXdKk_1s",
			"originalText": "Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata ",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 569,
			"versionNonce": 365526389,
			"isDeleted": true,
			"id": "SjWX-HwUPHpcyI5F6wvEa",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 58.333333333333485,
			"y": 312.46354166666663,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1561095419,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "0sTCDVFj"
				}
			],
			"updated": 1719819214586,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1218,
			"versionNonce": 359636981,
			"isDeleted": true,
			"id": "0sTCDVFj",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 76.82353719075539,
			"y": 326.46354166666663,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 390.01959228515625,
			"height": 75,
			"seed": 76223899,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModelMetadata = metadatos\nde un modelo text con hyperparámetros\npor defecto",
			"rawText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros por defecto",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "SjWX-HwUPHpcyI5F6wvEa",
			"originalText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros por defecto",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 170,
			"versionNonce": 1926383067,
			"isDeleted": true,
			"id": "lmkS_4UdF2ntsiurFQaJ5",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 272.8333333333335,
			"y": 249.96354166666663,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 4,
			"height": 52,
			"seed": 264982453,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "nXbsUek2GwC9w2qpsHqrw",
				"gap": 12.5,
				"focus": -0.023346303501945522
			},
			"endBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 10.5,
				"focus": 0.04492394764768305
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					4,
					52
				]
			]
		},
		{
			"type": "rectangle",
			"version": 899,
			"versionNonce": 598671451,
			"isDeleted": true,
			"id": "9odLyWkxt4Cdxsy9uz4uI",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 58.79385964912308,
			"y": 496.42077850877195,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 842369429,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "gtvyYF6r"
				}
			],
			"updated": 1719819214586,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1588,
			"versionNonce": 434295419,
			"isDeleted": true,
			"id": "gtvyYF6r",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 88.82407205146686,
			"y": 510.42077850877195,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 366.9395751953125,
			"height": 75,
			"seed": 442076917,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se define el encoder con el valor que\nviene en\nruntime.lmlModelMetadata.data.type",
			"rawText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "9odLyWkxt4Cdxsy9uz4uI",
			"originalText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 147,
			"versionNonce": 138798773,
			"isDeleted": true,
			"id": "WSNOrVvQHqAiekv8JoNYc",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 270.18859649122817,
			"y": 425.81551535087715,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.0526315789473983,
			"height": 53.68421052631584,
			"seed": 813730389,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 10.35197368421052,
				"focus": 0.013321165688444547
			},
			"endBinding": {
				"elementId": "9odLyWkxt4Cdxsy9uz4uI",
				"gap": 16.92105263157896,
				"focus": 0.0013470605215043614
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					1.0526315789473983,
					53.68421052631584
				]
			]
		},
		{
			"type": "arrow",
			"version": 146,
			"versionNonce": 1954073371,
			"isDeleted": true,
			"id": "6lkCqCllUbKTLuenpFGs0",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 269.1359649122809,
			"y": 615.2891995614034,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 34.736842105263236,
			"seed": 1906886139,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819214585,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "9odLyWkxt4Cdxsy9uz4uI",
				"gap": 15.868421052631447,
				"focus": 0.014791076050783109
			},
			"endBinding": {
				"elementId": "4nigHOoHWbcruxXdKk_1s",
				"gap": 7.121710526315724,
				"focus": 0.02360409219770788
			},
			"lastCommittedPoint": null,
			"startArrowhead": null,
			"endArrowhead": "arrow",
			"points": [
				[
					0,
					0
				],
				[
					0,
					34.736842105263236
				]
			]
		}
	],
	"appState": {
		"theme": "light",
		"viewBackgroundColor": "#ffffff",
		"currentItemStrokeColor": "#1e1e1e",
		"currentItemBackgroundColor": "transparent",
		"currentItemFillStyle": "solid",
		"currentItemStrokeWidth": 2,
		"currentItemStrokeStyle": "solid",
		"currentItemRoughness": 1,
		"currentItemOpacity": 100,
		"currentItemFontFamily": 1,
		"currentItemFontSize": 20,
		"currentItemTextAlign": "left",
		"currentItemStartArrowhead": null,
		"currentItemEndArrowhead": "arrow",
		"scrollX": 1080.2764023019795,
		"scrollY": 727.0954362761479,
		"zoom": {
			"value": 0.4490902649735019
		},
		"currentItemRoundness": "round",
		"gridSize": null,
		"gridColor": {
			"Bold": "#C9C9C9FF",
			"Regular": "#EDEDEDFF"
		},
		"currentStrokeOptions": null,
		"previousGridSize": null,
		"frameRendering": {
			"enabled": true,
			"clip": true,
			"name": true,
			"outline": true
		}
	},
	"files": {}
}
```
%%