---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
Constructor
Scratch3LearningMLBlocks ^9j9g8BpF

Deserialize
Aquí llega el atributo lmlModel si fue almacenado en el sb3. En ese caso se añade al localStorage.
En este caso no hay nada ^LWTUhUYI

LoadModel

Carga el modelo con LMLModelFactory.load().
Esta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.
En este caso es nulo ^iBwDRuVc

runtime.lmlModel = modelo LMLSequential limpio (sin entrenar, sin etiquetas) ^vzniBGvg

Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata  ^Wke3HgT1

runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros por defecto ^0sTCDVFj

Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type ^gtvyYF6r

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
			"version": 140,
			"versionNonce": 1114120027,
			"isDeleted": false,
			"id": "XJ3Etj5fHkZ6mYVf_vV4R",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -450.5,
			"y": -297.703125,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 296,
			"height": 93,
			"seed": 697337621,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "9j9g8BpF"
				},
				{
					"id": "twq3lN5XG98W1E_hKDvI_",
					"type": "arrow"
				}
			],
			"updated": 1719811045031,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 33,
			"versionNonce": 1570993493,
			"isDeleted": false,
			"id": "9j9g8BpF",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -430.36988067626953,
			"y": -276.203125,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 255.73976135253906,
			"height": 50,
			"seed": 1012982773,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719810353329,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Constructor\nScratch3LearningMLBlocks",
			"rawText": "Constructor\nScratch3LearningMLBlocks",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "XJ3Etj5fHkZ6mYVf_vV4R",
			"originalText": "Constructor\nScratch3LearningMLBlocks",
			"lineHeight": 1.25
		},
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
			"version": 234,
			"versionNonce": 1645432859,
			"isDeleted": false,
			"id": "LWTUhUYI",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -435.0698547363281,
			"y": -98.203125,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 265.13970947265625,
			"height": 150,
			"seed": 883450107,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811187349,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Deserialize\nAquí llega el atributo\nlmlModel si fue almacenado\nen el sb3. En ese caso se\nañade al localStorage.\nEn este caso no hay nada",
			"rawText": "Deserialize\nAquí llega el atributo lmlModel si fue almacenado en el sb3. En ese caso se añade al localStorage.\nEn este caso no hay nada",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "5zLeBFc3XKyqRdQ9x6Vrm",
			"originalText": "Deserialize\nAquí llega el atributo lmlModel si fue almacenado en el sb3. En ese caso se añade al localStorage.\nEn este caso no hay nada",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 265,
			"versionNonce": 187449653,
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
					"id": "7AtVQrtMTIF6rfV2yNfmP",
					"type": "arrow"
				}
			],
			"updated": 1719811141008,
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
			"version": 54,
			"versionNonce": 1557698005,
			"isDeleted": false,
			"id": "twq3lN5XG98W1E_hKDvI_",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -308.41692747843916,
			"y": -192.70312500000006,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.8959555577450828,
			"height": 75.00000000000004,
			"seed": 1839130293,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719812591174,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "XJ3Etj5fHkZ6mYVf_vV4R",
				"gap": 12,
				"focus": 0.02975073706781024
			},
			"endBinding": {
				"elementId": "5zLeBFc3XKyqRdQ9x6Vrm",
				"gap": 14.5,
				"focus": -0.06800178015131288
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
					-1.8959555577450828,
					75.00000000000004
				]
			]
		},
		{
			"type": "arrow",
			"version": 67,
			"versionNonce": 1536721749,
			"isDeleted": false,
			"id": "FmTxxqrTyV98i2SvHjFpS",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -306.73699375746617,
			"y": 73.296875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.6746904276982377,
			"height": 46,
			"seed": 1713961275,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719812591174,
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
					-0.6746904276982377,
					46
				]
			]
		},
		{
			"type": "rectangle",
			"version": 431,
			"versionNonce": 182479771,
			"isDeleted": false,
			"id": "nXbsUek2GwC9w2qpsHqrw",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -8,
			"y": 123.796875,
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
					"id": "7AtVQrtMTIF6rfV2yNfmP",
					"type": "arrow"
				},
				{
					"id": "lmkS_4UdF2ntsiurFQaJ5",
					"type": "arrow"
				}
			],
			"updated": 1719811508369,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 995,
			"versionNonce": 1374698773,
			"isDeleted": false,
			"id": "vzniBGvg",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 7.910217285156278,
			"y": 150.296875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 395.1795654296875,
			"height": 50,
			"seed": 821192731,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811302220,
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
			"version": 603,
			"versionNonce": 1671059445,
			"isDeleted": false,
			"id": "4nigHOoHWbcruxXdKk_1s",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -6.736842105263236,
			"y": 646.4810855263157,
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
				},
				{
					"id": "6lkCqCllUbKTLuenpFGs0",
					"type": "arrow"
				}
			],
			"updated": 1719812598191,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1169,
			"versionNonce": 1828544469,
			"isDeleted": false,
			"id": "Wke3HgT1",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 15.49336724532273,
			"y": 660.4810855263157,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 382.5395812988281,
			"height": 75,
			"seed": 922152661,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812587501,
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
			"type": "arrow",
			"version": 46,
			"versionNonce": 305508565,
			"isDeleted": false,
			"id": "7AtVQrtMTIF6rfV2yNfmP",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -71.50000000000003,
			"y": 180.296875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 53,
			"height": 2,
			"seed": 2064977467,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719812591175,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "YpjijiOVB4RjxCVvnBdm5",
				"gap": 14.999999999999972,
				"focus": -0.5870041982580361
			},
			"endBinding": {
				"elementId": "nXbsUek2GwC9w2qpsHqrw",
				"gap": 10.5,
				"focus": 0.09155710438777138
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
					53,
					-2
				]
			]
		},
		{
			"type": "rectangle",
			"version": 538,
			"versionNonce": 1512092699,
			"isDeleted": false,
			"id": "SjWX-HwUPHpcyI5F6wvEa",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1,
			"y": 301.796875,
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
				},
				{
					"id": "lmkS_4UdF2ntsiurFQaJ5",
					"type": "arrow"
				},
				{
					"id": "WSNOrVvQHqAiekv8JoNYc",
					"type": "arrow"
				}
			],
			"updated": 1719812595588,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1188,
			"versionNonce": 216116443,
			"isDeleted": false,
			"id": "0sTCDVFj",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 19.490203857421903,
			"y": 315.796875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 390.01959228515625,
			"height": 75,
			"seed": 76223899,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811504510,
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
			"version": 42,
			"versionNonce": 135274069,
			"isDeleted": false,
			"id": "lmkS_4UdF2ntsiurFQaJ5",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 215.5,
			"y": 239.296875,
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
			"updated": 1719812591175,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "nXbsUek2GwC9w2qpsHqrw",
				"gap": 12.5,
				"focus": -0.023346303501945397
			},
			"endBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 10.5,
				"focus": 0.04492394764768292
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
			"version": 868,
			"versionNonce": 1012097333,
			"isDeleted": false,
			"id": "9odLyWkxt4Cdxsy9uz4uI",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 1.4605263157895934,
			"y": 485.7541118421053,
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
				},
				{
					"id": "WSNOrVvQHqAiekv8JoNYc",
					"type": "arrow"
				},
				{
					"id": "6lkCqCllUbKTLuenpFGs0",
					"type": "arrow"
				}
			],
			"updated": 1719812598191,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1558,
			"versionNonce": 660685883,
			"isDeleted": false,
			"id": "gtvyYF6r",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 31.49073871813337,
			"y": 499.7541118421053,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 366.9395751953125,
			"height": 75,
			"seed": 442076917,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812593152,
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
			"id": "WSNOrVvQHqAiekv8JoNYc",
			"type": "arrow",
			"x": 212.85526315789468,
			"y": 415.1488486842105,
			"width": 1.0526315789473983,
			"height": 53.68421052631584,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 813730389,
			"version": 19,
			"versionNonce": 1640593595,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1719812595588,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					1.0526315789473983,
					53.68421052631584
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"focus": 0.013321165688444677,
				"gap": 10.35197368421052
			},
			"endBinding": {
				"elementId": "9odLyWkxt4Cdxsy9uz4uI",
				"focus": 0.0013470605215042306,
				"gap": 16.92105263157896
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"id": "6lkCqCllUbKTLuenpFGs0",
			"type": "arrow",
			"x": 211.8026315789474,
			"y": 604.6225328947368,
			"width": 0,
			"height": 34.736842105263236,
			"angle": 0,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"seed": 1906886139,
			"version": 18,
			"versionNonce": 1041986197,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1719812598191,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					0,
					34.736842105263236
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "9odLyWkxt4Cdxsy9uz4uI",
				"focus": 0.014791076050783244,
				"gap": 15.868421052631447
			},
			"endBinding": {
				"elementId": "4nigHOoHWbcruxXdKk_1s",
				"focus": 0.023604092197707757,
				"gap": 7.121710526315724
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
		},
		{
			"type": "arrow",
			"version": 105,
			"versionNonce": 1541061653,
			"isDeleted": true,
			"id": "fTKnQBkTQHSACRypM03Z4",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 207.26479525545238,
			"y": 415.296875,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0.0257922810258151,
			"height": 219.68421052631572,
			"seed": 781823355,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719812590096,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 10.5,
				"focus": 0.03390844719258016
			},
			"endBinding": {
				"elementId": "4nigHOoHWbcruxXdKk_1s",
				"gap": 11.5,
				"focus": 0.0021940759948138773
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
					-0.0257922810258151,
					219.68421052631572
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
		"scrollX": 667.1447368421052,
		"scrollY": -42.94490131578951,
		"zoom": {
			"value": 0.9500000000000001
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