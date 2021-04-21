{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T07:16:53",
        "displayName": "New Decision Table",
        "hitPolicy": "ANY",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule3",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Applied\""
                }],
                "inputEntry": [
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "(VacationDays >0)"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "(date(date) in [date(\"2020-01-01\") ..date(\"2020-12-31\")])"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "LeavesAvailable = true"
                    },
                    {
                        "domainName": "CustomMultinput2",
                        "text": "(State = \"No Probation Period\")"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule2",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Refused\""
                }],
                "inputEntry": [
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "(VacationDays >0)"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "date = NO_VALUE"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "LeavesAvailable = NO_VALUE"
                    },
                    {
                        "domainName": "CustomMultinput2",
                        "text": "(State = \"Probation Period\")"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule1",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Refused\""
                }],
                "inputEntry": [
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "(VacationDays = 0)"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "date = NO_VALUE"
                    },
                    {
                        "domainName": "CustomMultiInput1",
                        "text": "LeavesAvailable = false"
                    },
                    {
                        "domainName": "CustomMultinput2",
                        "text": "State = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [{
            "primitive": false,
            "itemDefinitionId": "IOFormat.Multiple.Custom.Any.CutomOutput.result",
            "outputValues": {
                "domainName": null,
                "text": null
            },
            "groupLabel": "CutomOutput",
            "description": null,
            "defaultOutputEntry": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": null
            },
            "allowedAttributes": [],
            "label": "result",
            "collection": false,
            "parentId": "IOFormat.Multiple.Custom.Any.CutomOutput",
            "explicit": true,
            "groupDescription": null,
            "name": "result",
            "typeRef": "string"
        }],
        "input": [
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                "format": null,
                "groupLabel": "CustomMultiInput1",
                "description": null,
                "allowedAttributes": [
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "VacationDays",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "VacationDays",
                        "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.VacationDays",
                        "isGeoEnabled": false,
                        "typeRef": "number"
                    },
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "date",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "date",
                        "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.date",
                        "isGeoEnabled": false,
                        "typeRef": "date"
                    },
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "LeavesAvailable",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "LeavesAvailable",
                        "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.LeavesAvailable",
                        "isGeoEnabled": false,
                        "typeRef": "boolean"
                    }
                ],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "CustomMultiInput1"
                },
                "inputValues": null,
                "typeRef": "CustomMultiInput1"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.Custom.Any.CustomMultinput2",
                "format": null,
                "groupLabel": "CustomMultinput2",
                "description": null,
                "allowedAttributes": [{
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "State",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.Any.CustomMultinput2",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "State",
                    "id": "IOFormat.Multiple.Custom.Any.CustomMultinput2.State",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.Any.CustomMultinput2",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "CustomMultinput2"
                },
                "inputValues": null,
                "typeRef": "CustomMultinput2"
            }
        ],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Multiple.Custom.Any",
        "comment": null,
        "id": "IOFormat.Multiple.Custom.Any.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T06:55:26",
        "displayName": "AnyHitPolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Multiple.Custom.Any",
        "tables": ["IOFormat.Multiple.Custom.Any.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Multiple.Custom.Any",
        "name": "model",
        "id": "IOFormat.Multiple.Custom.Any.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T12:25:26",
        "author": "policyadmin",
        "description": "IOFormat.Multiple.Custom.Any",
        "id": "IOFormat.Multiple.Custom.Any"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T06:58:23",
            "displayName": "CustomMultiInput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "672f31a8-acdc-40bd-a6ab-52af7a3c5745",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "VacationDays",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.Custom.Any",
                    "name": "VacationDays",
                    "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.VacationDays",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "date",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.Custom.Any",
                    "name": "date",
                    "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.date",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "LeavesAvailable",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.Custom.Any",
                    "name": "LeavesAvailable",
                    "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1.LeavesAvailable",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "namespace": "IOFormat.Multiple.Custom.Any",
            "name": "CustomMultiInput1",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.Any.CustomMultiInput1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "VacationDays",
                        "typeRef": "number"
                    },
                    {
                        "displayName": "date",
                        "typeRef": "date"
                    },
                    {
                        "displayName": "LeavesAvailable",
                        "typeRef": "boolean"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "CustomMultiInput1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T06:58:43",
            "displayName": "CustomMultinput2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "33ea3afb-29c3-4ab8-865f-04bda00e34e1",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "State",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.Any.CustomMultinput2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.Any",
                "name": "State",
                "id": "IOFormat.Multiple.Custom.Any.CustomMultinput2.State",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Multiple.Custom.Any",
            "name": "CustomMultinput2",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.Any.CustomMultinput2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "State",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "CustomMultinput2"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T06:59:02",
            "displayName": "CutomOutput",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "66738182-36eb-49d8-98f3-cedd2ae14e72",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "result",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.Any.CutomOutput",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.Any",
                "name": "result",
                "id": "IOFormat.Multiple.Custom.Any.CutomOutput.result",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Multiple.Custom.Any",
            "name": "CutomOutput",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.Any.CutomOutput",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "result",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "CutomOutput"
        }
    ]
}