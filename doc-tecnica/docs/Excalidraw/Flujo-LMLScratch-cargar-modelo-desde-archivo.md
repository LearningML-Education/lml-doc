---

excalidraw-plugin: parsed
tags: [excalidraw]

---
==⚠  Switch to EXCALIDRAW VIEW in the MORE OPTIONS menu of this document. ⚠==


# Text Elements
LoadModel

Carga el modelo con LMLModelFactory.load().
Esta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.
En este caso viene con los ficheros del modelo ^iBwDRuVc

Se guarda en el localStorage la misma estructura que hay en runtime.lmlModelMetadata  ^Wke3HgT1

runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en modelZipContent ^0sTCDVFj

Se activa evento PROJECT_LOADED ^Zx5O4vNy

Del primer fichero de modelZipContent se pill el nombre del modelo (nombre-modelo)` ^PoSX1yVo

De nombre-modelo.metadata se pillan los metadatos ^8CLHsgZK

Se parsea el fichero nombre-modelo.metadata para extraer el contenido (lmlModelMetadata) ^D7SfWzi4

Se crea un modelo del tipo definido en lmlModelMetadata.modelAlgorithm ^UJeO76dT

Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los archivos de modelZipContent  ^ic6Voq6Z

Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type ^f7BRlmPZ

runtime.lmlModel = modelo cargado desde disco (entrenado, con etiquetas) ^FBux20OP

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
			"version": 316,
			"versionNonce": 1515425211,
			"isDeleted": false,
			"id": "YpjijiOVB4RjxCVvnBdm5",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -517.7105263157895,
			"y": 5.323190789473699,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 310,
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
					"id": "wrU9JXPkekgaVZXUchvnK",
					"type": "arrow"
				},
				{
					"id": "vxEE_M9q6pU1rsTlrGO7q",
					"type": "arrow"
				}
			],
			"updated": 1719812546865,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 827,
			"versionNonce": 653473755,
			"isDeleted": false,
			"id": "iBwDRuVc",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -506.39030536852385,
			"y": 10.3231907894737,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 404.35955810546875,
			"height": 300,
			"seed": 770795797,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811927376,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "LoadModel\n\nCarga el modelo con\nLMLModelFactory.load().\nEsta función recibe desde el\nruntime.modelZipContent, que será nulo si\nno se ha leído desde disco ningún modelo,\no contendrá los ficheros del archivo zip\nque contiene al modelo si se ha cargado\ndesde el menú algún modelo.\nEn este caso viene con los ficheros del\nmodelo",
			"rawText": "LoadModel\n\nCarga el modelo con LMLModelFactory.load().\nEsta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.\nEn este caso viene con los ficheros del modelo",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "YpjijiOVB4RjxCVvnBdm5",
			"originalText": "LoadModel\n\nCarga el modelo con LMLModelFactory.load().\nEsta función recibe desde el runtime.modelZipContent, que será nulo si no se ha leído desde disco ningún modelo, o contendrá los ficheros del archivo zip que contiene al modelo si se ha cargado desde el menú algún modelo.\nEn este caso viene con los ficheros del modelo",
			"lineHeight": 1.25
		},
		{
			"type": "diamond",
			"version": 48,
			"versionNonce": 2048504827,
			"isDeleted": false,
			"id": "Qai-5Ngvy5ky3u9aWr92l",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -267.7105263157895,
			"y": 5.823190789473699,
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
			"updated": 1719811891806,
			"link": null,
			"locked": false
		},
		{
			"type": "rectangle",
			"version": 805,
			"versionNonce": 1903775899,
			"isDeleted": false,
			"id": "4nigHOoHWbcruxXdKk_1s",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 33.263157894736764,
			"y": 981.217927631579,
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
					"id": "pGOfTKmVCKXgWyWgRWHRo",
					"type": "arrow"
				}
			],
			"updated": 1719812543133,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1371,
			"versionNonce": 752518459,
			"isDeleted": false,
			"id": "Wke3HgT1",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 55.49336724532273,
			"y": 995.217927631579,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 382.5395812988281,
			"height": 75,
			"seed": 922152661,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812543133,
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
			"version": 756,
			"versionNonce": 1413526139,
			"isDeleted": false,
			"id": "SjWX-HwUPHpcyI5F6wvEa",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 37.842105263157805,
			"y": 619.6916118421054,
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
					"id": "zJvvLuAIWehIjS6tHwnKw",
					"type": "arrow"
				}
			],
			"updated": 1719812543133,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1450,
			"versionNonce": 1746578203,
			"isDeleted": false,
			"id": "0sTCDVFj",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 56.33230912057971,
			"y": 633.6916118421054,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 390.01959228515625,
			"height": 75,
			"seed": 76223899,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812543133,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModelMetadata = metadatos\nde un modelo text con hyperparámetros\nque venían en modelZipContent",
			"rawText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en modelZipContent",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "SjWX-HwUPHpcyI5F6wvEa",
			"originalText": "runtime.lmlModelMetadata = metadatos de un modelo text con hyperparámetros que venían en modelZipContent",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 768,
			"versionNonce": 1589566165,
			"isDeleted": false,
			"id": "lmkS_4UdF2ntsiurFQaJ5",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 251.4547509256525,
			"y": 557.1916118421054,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 4.413142680329884,
			"height": 52,
			"seed": 264982453,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150478,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "V-Hjf2_ks_LblqTQL5B8F",
				"gap": 12.830592105263236,
				"focus": 0.03933826422870941
			},
			"endBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 10.5,
				"focus": 0.04492394764768332
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
			"version": 254,
			"versionNonce": 770537749,
			"isDeleted": false,
			"id": "UvGrxXdRH-j7wku6W13DB",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -458.3026315789473,
			"y": -361.69325657894734,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 296,
			"height": 160,
			"seed": 563522869,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "Zx5O4vNy"
				},
				{
					"id": "wrU9JXPkekgaVZXUchvnK",
					"type": "arrow"
				}
			],
			"updated": 1719811855802,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 324,
			"versionNonce": 2092834165,
			"isDeleted": false,
			"id": "Zx5O4vNy",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -408.9225504021895,
			"y": -306.69325657894734,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 197.23983764648438,
			"height": 50,
			"seed": 890584725,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719811852349,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se activa evento\nPROJECT_LOADED",
			"rawText": "Se activa evento PROJECT_LOADED",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "UvGrxXdRH-j7wku6W13DB",
			"originalText": "Se activa evento PROJECT_LOADED",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 110,
			"versionNonce": 124029397,
			"isDeleted": false,
			"id": "wrU9JXPkekgaVZXUchvnK",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -314.4960514653807,
			"y": -183.79851973684208,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.0241321996223292,
			"height": 166.3157894736842,
			"seed": 1891474683,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150472,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "UvGrxXdRH-j7wku6W13DB",
				"gap": 17.89473684210526,
				"focus": 0.02418037934932827
			},
			"endBinding": {
				"elementId": "YpjijiOVB4RjxCVvnBdm5",
				"gap": 22.805921052631618,
				"focus": -0.0578423196705585
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
					-1.0241321996223292,
					166.3157894736842
				]
			]
		},
		{
			"type": "rectangle",
			"version": 542,
			"versionNonce": 1142447157,
			"isDeleted": false,
			"id": "7zcthXIFT-56e9cpbWMj8",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -511.17105263157885,
			"y": 402.5962171052632,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1269452757,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "PoSX1yVo"
				},
				{
					"id": "vxEE_M9q6pU1rsTlrGO7q",
					"type": "arrow"
				},
				{
					"id": "l3Q57Cd-h8nev3IXvNTbV",
					"type": "arrow"
				}
			],
			"updated": 1719812548515,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1234,
			"versionNonce": 1690610651,
			"isDeleted": false,
			"id": "PoSX1yVo",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -499.31082313939135,
			"y": 429.0962171052632,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 403.279541015625,
			"height": 50,
			"seed": 769363253,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812073968,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Del primer fichero de modelZipContent se\npill el nombre del modelo (nombre-modelo)`",
			"rawText": "Del primer fichero de modelZipContent se pill el nombre del modelo (nombre-modelo)`",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "7zcthXIFT-56e9cpbWMj8",
			"originalText": "Del primer fichero de modelZipContent se pill el nombre del modelo (nombre-modelo)`",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 570,
			"versionNonce": 1253568251,
			"isDeleted": false,
			"id": "5yBlD-ox_kCI8GwnV6ZzH",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -502.7499999999999,
			"y": 564.7014802631579,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1375909749,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "8CLHsgZK"
				},
				{
					"id": "l3Q57Cd-h8nev3IXvNTbV",
					"type": "arrow"
				},
				{
					"id": "vFQ2TJAM1HZ0GzkpdCUyt",
					"type": "arrow"
				}
			],
			"updated": 1719812550627,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1313,
			"versionNonce": 435212475,
			"isDeleted": false,
			"id": "8CLHsgZK",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -488.97979736328114,
			"y": 591.2014802631579,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 399.4595947265625,
			"height": 50,
			"seed": 134611157,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812092320,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "De nombre-modelo.metadata se pillan los\nmetadatos",
			"rawText": "De nombre-modelo.metadata se pillan los metadatos",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "5yBlD-ox_kCI8GwnV6ZzH",
			"originalText": "De nombre-modelo.metadata se pillan los metadatos",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 595,
			"versionNonce": 58065717,
			"isDeleted": false,
			"id": "Rhyq6nWTWhxzHW2jzCy-u",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -515.3815789473684,
			"y": 732.0699013157894,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 457251643,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "D7SfWzi4"
				},
				{
					"id": "vFQ2TJAM1HZ0GzkpdCUyt",
					"type": "arrow"
				},
				{
					"id": "q4G9F6hBWd4YBCYTzd7Dl",
					"type": "arrow"
				}
			],
			"updated": 1719812553212,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1443,
			"versionNonce": 176963099,
			"isDeleted": false,
			"id": "D7SfWzi4",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -467.7713952315481,
			"y": 746.0699013157894,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 331.7796325683594,
			"height": 75,
			"seed": 1821375451,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812221214,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se parsea el fichero nombre-\nmodelo.metadata para extraer el\ncontenido (lmlModelMetadata)",
			"rawText": "Se parsea el fichero nombre-modelo.metadata para extraer el contenido (lmlModelMetadata)",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "Rhyq6nWTWhxzHW2jzCy-u",
			"originalText": "Se parsea el fichero nombre-modelo.metadata para extraer el contenido (lmlModelMetadata)",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 642,
			"versionNonce": 1128412347,
			"isDeleted": false,
			"id": "h0fk1kG1XX5gfGJda0wjX",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -514.328947368421,
			"y": 921.5435855263158,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 864685429,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "UJeO76dT"
				},
				{
					"id": "q4G9F6hBWd4YBCYTzd7Dl",
					"type": "arrow"
				},
				{
					"id": "7cn6Wgle7OdD9oB-MvXdU",
					"type": "arrow"
				}
			],
			"updated": 1719812554860,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1564,
			"versionNonce": 879161627,
			"isDeleted": false,
			"id": "UJeO76dT",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -488.9287398488898,
			"y": 948.0435855263158,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 376.1995849609375,
			"height": 50,
			"seed": 707958485,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812262728,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se crea un modelo del tipo definido en\nlmlModelMetadata.modelAlgorithm",
			"rawText": "Se crea un modelo del tipo definido en lmlModelMetadata.modelAlgorithm",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "h0fk1kG1XX5gfGJda0wjX",
			"originalText": "Se crea un modelo del tipo definido en lmlModelMetadata.modelAlgorithm",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 690,
			"versionNonce": 1011969979,
			"isDeleted": false,
			"id": "fbiX9BHc_9Z4M5usNArT4",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -506.9605263157895,
			"y": 1115.2277960526317,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 323346491,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "ic6Voq6Z"
				},
				{
					"id": "7cn6Wgle7OdD9oB-MvXdU",
					"type": "arrow"
				},
				{
					"id": "lD6Wgoj39XrmFUhly2px0",
					"type": "arrow"
				}
			],
			"updated": 1719819162592,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1751,
			"versionNonce": 1940388789,
			"isDeleted": false,
			"id": "ic6Voq6Z",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -483.8503273411801,
			"y": 1129.2277960526317,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 380.77960205078125,
			"height": 75,
			"seed": 1907630299,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812391850,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se crea el modelo concreto, es decir\nentrenado con los datos que vienen en\nlos archivos de modelZipContent",
			"rawText": "Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los archivos de modelZipContent ",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "fbiX9BHc_9Z4M5usNArT4",
			"originalText": "Se crea el modelo concreto, es decir entrenado con los datos que vienen en  los archivos de modelZipContent ",
			"lineHeight": 1.25
		},
		{
			"type": "rectangle",
			"version": 849,
			"versionNonce": 1744487835,
			"isDeleted": false,
			"id": "48QVl1a8Gc2lvCOqHW4h0",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 36.1973684210526,
			"y": 798.3856907894742,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 1916687989,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "f7BRlmPZ"
				},
				{
					"id": "zJvvLuAIWehIjS6tHwnKw",
					"type": "arrow"
				},
				{
					"id": "pGOfTKmVCKXgWyWgRWHRo",
					"type": "arrow"
				}
			],
			"updated": 1719812543133,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1541,
			"versionNonce": 493181499,
			"isDeleted": false,
			"id": "f7BRlmPZ",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 66.22758082339638,
			"y": 812.3856907894742,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 366.9395751953125,
			"height": 75,
			"seed": 2104868821,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719812543133,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "Se define el encoder con el valor que\nviene en\nruntime.lmlModelMetadata.data.type",
			"rawText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "48QVl1a8Gc2lvCOqHW4h0",
			"originalText": "Se define el encoder con el valor que viene en runtime.lmlModelMetadata.data.type",
			"lineHeight": 1.25
		},
		{
			"type": "arrow",
			"version": 225,
			"versionNonce": 1569107285,
			"isDeleted": false,
			"id": "zJvvLuAIWehIjS6tHwnKw",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 249.69736842105272,
			"y": 729.8856907894738,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 2.105263157894683,
			"height": 57.8947368421052,
			"seed": 1352237717,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150477,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "SjWX-HwUPHpcyI5F6wvEa",
				"gap": 7.194078947368325,
				"focus": 0.017546636630831558
			},
			"endBinding": {
				"elementId": "48QVl1a8Gc2lvCOqHW4h0",
				"gap": 10.605263157895251,
				"focus": 0.020260858553881197
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
			"version": 225,
			"versionNonce": 1598102549,
			"isDeleted": false,
			"id": "pGOfTKmVCKXgWyWgRWHRo",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 242.32894736842104,
			"y": 910.938322368421,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 56.84210526315769,
			"seed": 1836948699,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150477,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "48QVl1a8Gc2lvCOqHW4h0",
				"gap": 9.55263157894683,
				"focus": 0.03451251078515966
			},
			"endBinding": {
				"elementId": "4nigHOoHWbcruxXdKk_1s",
				"gap": 13.437500000000227,
				"focus": -0.020769135954640527
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
					56.84210526315769
				]
			]
		},
		{
			"type": "arrow",
			"version": 44,
			"versionNonce": 1337055381,
			"isDeleted": false,
			"id": "vxEE_M9q6pU1rsTlrGO7q",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -310.30263157894734,
			"y": 330.93832236842115,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 4.21052631578948,
			"height": 58.947368421052715,
			"seed": 385469013,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150473,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "YpjijiOVB4RjxCVvnBdm5",
				"gap": 15.615131578947512,
				"focus": 0.08139459454935045
			},
			"endBinding": {
				"elementId": "7zcthXIFT-56e9cpbWMj8",
				"gap": 12.710526315789366,
				"focus": -0.017656375769221095
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
					4.21052631578948,
					58.947368421052715
				]
			]
		},
		{
			"type": "arrow",
			"version": 33,
			"versionNonce": 760899093,
			"isDeleted": false,
			"id": "l3Q57Cd-h8nev3IXvNTbV",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -317.6710526315789,
			"y": 519.359375,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 6.3157894736842195,
			"height": 31.578947368421268,
			"seed": 52069275,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150474,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "7zcthXIFT-56e9cpbWMj8",
				"gap": 13.763157894736821,
				"focus": 0.14768825549127512
			},
			"endBinding": {
				"elementId": "5yBlD-ox_kCI8GwnV6ZzH",
				"gap": 13.76315789473665,
				"focus": -0.04044964959315254
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
					6.3157894736842195,
					31.578947368421268
				]
			]
		},
		{
			"type": "arrow",
			"version": 30,
			"versionNonce": 965751701,
			"isDeleted": false,
			"id": "vFQ2TJAM1HZ0GzkpdCUyt",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -313.4605263157894,
			"y": 685.6751644736843,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 3.1578947368420813,
			"height": 28.42105263157896,
			"seed": 1641573461,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150475,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "5yBlD-ox_kCI8GwnV6ZzH",
				"gap": 17.973684210526358,
				"focus": 0.14565049217061918
			},
			"endBinding": {
				"elementId": "Rhyq6nWTWhxzHW2jzCy-u",
				"gap": 17.97368421052613,
				"focus": -0.0032011097180357586
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
					3.1578947368420813,
					28.42105263157896
				]
			]
		},
		{
			"type": "arrow",
			"version": 39,
			"versionNonce": 598950165,
			"isDeleted": false,
			"id": "q4G9F6hBWd4YBCYTzd7Dl",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -307.1447368421052,
			"y": 853.0435855263158,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 1.0526315789473415,
			"height": 48.42105263157896,
			"seed": 185822427,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150476,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "Rhyq6nWTWhxzHW2jzCy-u",
				"gap": 17.97368421052647,
				"focus": 0.03156028841412164
			},
			"endBinding": {
				"elementId": "h0fk1kG1XX5gfGJda0wjX",
				"gap": 20.07894736842104,
				"focus": -0.017272860550972352
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
					1.0526315789473415,
					48.42105263157896
				]
			]
		},
		{
			"type": "arrow",
			"version": 44,
			"versionNonce": 1797492373,
			"isDeleted": false,
			"id": "7cn6Wgle7OdD9oB-MvXdU",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": -303.9868421052631,
			"y": 1046.7277960526317,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 0,
			"height": 60,
			"seed": 1587770197,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 2
			},
			"boundElements": [],
			"updated": 1719819150477,
			"link": null,
			"locked": false,
			"startBinding": {
				"elementId": "h0fk1kG1XX5gfGJda0wjX",
				"gap": 22.184210526315837,
				"focus": 0.014791076050782578
			},
			"endBinding": {
				"elementId": "fbiX9BHc_9Z4M5usNArT4",
				"gap": 8.5,
				"focus": -0.04930358683594211
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
					60
				]
			]
		},
		{
			"type": "rectangle",
			"version": 686,
			"versionNonce": 1709112571,
			"isDeleted": false,
			"id": "V-Hjf2_ks_LblqTQL5B8F",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 41.06578947368416,
			"y": 441.3610197368422,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 427.00000000000006,
			"height": 103,
			"seed": 662871675,
			"groupIds": [],
			"frameId": null,
			"roundness": {
				"type": 3
			},
			"boundElements": [
				{
					"type": "text",
					"id": "FBux20OP"
				},
				{
					"id": "lmkS_4UdF2ntsiurFQaJ5",
					"type": "arrow"
				},
				{
					"id": "lD6Wgoj39XrmFUhly2px0",
					"type": "arrow"
				}
			],
			"updated": 1719819162593,
			"link": null,
			"locked": false
		},
		{
			"type": "text",
			"version": 1345,
			"versionNonce": 1824979317,
			"isDeleted": false,
			"id": "FBux20OP",
			"fillStyle": "solid",
			"strokeWidth": 2,
			"strokeStyle": "solid",
			"roughness": 1,
			"opacity": 100,
			"angle": 0,
			"x": 54.935998213918566,
			"y": 467.8610197368422,
			"strokeColor": "#1e1e1e",
			"backgroundColor": "transparent",
			"width": 399.25958251953125,
			"height": 50,
			"seed": 1413420827,
			"groupIds": [],
			"frameId": null,
			"roundness": null,
			"boundElements": [],
			"updated": 1719819139984,
			"link": null,
			"locked": false,
			"fontSize": 20,
			"fontFamily": 1,
			"text": "runtime.lmlModel = modelo cargado desde\ndisco (entrenado, con etiquetas)",
			"rawText": "runtime.lmlModel = modelo cargado desde disco (entrenado, con etiquetas)",
			"textAlign": "center",
			"verticalAlign": "middle",
			"containerId": "V-Hjf2_ks_LblqTQL5B8F",
			"originalText": "runtime.lmlModel = modelo cargado desde disco (entrenado, con etiquetas)",
			"lineHeight": 1.25
		},
		{
			"id": "lD6Wgoj39XrmFUhly2px0",
			"type": "arrow",
			"x": -63.822368421052715,
			"y": 1168.861019736842,
			"width": 92,
			"height": 653.9999999999999,
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
			"seed": 606517301,
			"version": 31,
			"versionNonce": 564248667,
			"isDeleted": false,
			"boundElements": null,
			"updated": 1719819162593,
			"link": null,
			"locked": false,
			"points": [
				[
					0,
					0
				],
				[
					92,
					-653.9999999999999
				]
			],
			"lastCommittedPoint": null,
			"startBinding": {
				"elementId": "fbiX9BHc_9Z4M5usNArT4",
				"focus": 1.0416481040826864,
				"gap": 16.138157894736736
			},
			"endBinding": {
				"elementId": "V-Hjf2_ks_LblqTQL5B8F",
				"focus": 1.0115459576160613,
				"gap": 12.888157894736878
			},
			"startArrowhead": null,
			"endArrowhead": "arrow"
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
		"scrollX": 1217.8223684210527,
		"scrollY": 474.3264802631578,
		"zoom": {
			"value": 0.5
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