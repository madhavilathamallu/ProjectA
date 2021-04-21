{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1qfvn8v",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_o14gmo",
                "sourceRef": "StartEvent_1rmzydr",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1jxsrxy",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1fri8ux",
                "sourceRef": "ServiceTask_gdhtlx",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_q2vyra",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1hy5v5n",
                "sourceRef": "UserTask_1jxsrxy",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_1vrru7v",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1kjokvh",
                "sourceRef": "BusinessRuleTask_1qfvn8v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_gdhtlx",
                "businessProp": {"condition": "singleDBBizObj.data ==  \"Not Eligible\""},
                "name": "codition1",
                "id": "SequenceFlow_y5zpfv",
                "sourceRef": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_a1jrr3",
                "businessProp": {"condition": "singleDBBizObj.data ==  \"Eligible\""},
                "name": "condition2",
                "id": "SequenceFlow_1i2gnfo",
                "sourceRef": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1xnhokj",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_si41h5",
                "sourceRef": "ServiceTask_a1jrr3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_q2vyra",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1oevike",
                "sourceRef": "UserTask_1xnhokj",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": [
                "SequenceFlow_1hy5v5n",
                "SequenceFlow_1oevike"
            ],
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_q2vyra",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1kjokvh",
            "incoming": "SequenceFlow_o14gmo",
            "businessProp": {
                "output": "singleDBBizObj",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Single.DB.Unique.model/IOFormat.Single.DB.Unique.decisiontable",
                "parameters-collaps": [{
                    "reference": "ApplicantDetails",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "ApplicantDetails",
                    "label": [
                        "Name",
                        "Value"
                    ],
                    "type": "attributeGroup",
                    "primaryPanal": [
                        {
                            "reference": "name",
                            "configurations": {"disableEdit": true},
                            "type": "inputWithoutLable",
                            "maxLength": 30,
                            "events": {},
                            "parentRef": "ApplicantDetails"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "ApplicantDetails"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"UniquePolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/inputoutputformat/Decision Models\",\"properties\":{\"isWorkspaceReady\":true},\"meta\":\"{}\",\"size\":0,\"errorMessage\":null,\"parentId\":\"3ce3d324-1d38-49f6-86f7-66d66a968b00\",\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Single.DB.Unique\",\"content\":null,\"id\":\"dfcb3ce4-cc93-4110-9ed8-f34351e1f976\",\"createdOn\":\"2020-12-08T17:58:40.887+05:30\",\"modifiedOn\":\"2020-12-08T18:03:03.515+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Single.DB.Unique.model",
                "ApplicantDetails": [
                    {
                        "name": "name",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "name"
                    },
                    {
                        "name": "dob",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "dob"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "citizen"
                    },
                    {
                        "name": "age",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "age"
                    }
                ],
                "inputbiz1": [
                    {
                        "name": "name",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "age",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "dob",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "passfail",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    }
                ],
                "parameters": [
                    {
                        "name": "name",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "name"
                    },
                    {
                        "name": "dob",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "dob"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "citizen"
                    },
                    {
                        "name": "age",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "age"
                    }
                ],
                "decisiontable-id": "IOFormat.Single.DB.Unique.decisiontable"
            },
            "name": "PolicyEligibleCheck",
            "id": "BusinessRuleTask_1qfvn8v",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_1fri8ux",
                "incoming": "SequenceFlow_y5zpfv",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/updateDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/deleteDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertDMdatatypeTest",
                            "selectAllDMdatatypeTest",
                            "updateDMdatatypeTest",
                            "deleteDMdatatypeTest",
                            "selectDMdatatypeTest"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/DMDB/insertDMdatatypeTest\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/DMDB/insertDMdatatypeTest\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insert",
                    "data-source": "{\"name\":\"DMDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2\",\"createdOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);\n\n\n ",
                    "data-source-function": "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "insertDB",
                "id": "ServiceTask_gdhtlx",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_si41h5",
                "incoming": "SequenceFlow_1i2gnfo",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/updateDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/deleteDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertDMdatatypeTest",
                            "selectAllDMdatatypeTest",
                            "updateDMdatatypeTest",
                            "deleteDMdatatypeTest",
                            "selectDMdatatypeTest"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/DMDB/insertDMdatatypeTest\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/DMDB/insertDMdatatypeTest\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insert1",
                    "data-source": "{\"name\":\"DMDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2\",\"createdOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);\n",
                    "data-source-function": "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "insertdbdata",
                "id": "ServiceTask_a1jrr3",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "exclusiveGateway": {
            "outgoing": [
                "SequenceFlow_y5zpfv",
                "SequenceFlow_1i2gnfo"
            ],
            "incoming": "SequenceFlow_1kjokvh",
            "businessProp": {},
            "name": "check",
            "id": "ExclusiveGateway_1vrru7v",
            "type": "bpmn:exclusiveGateway"
        },
        "startEvent": {
            "outgoing": "SequenceFlow_o14gmo",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1rmzydr",
            "type": "bpmn:startEvent"
        },
        "id": "Process_1hzbd6n",
        "userTask": [
            {
                "outgoing": "SequenceFlow_1hy5v5n",
                "incoming": "SequenceFlow_1fri8ux",
                "businessProp": {
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Role1",
                        "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "formType": "Custom",
                    "fromUser": "\"Super Admin\"",
                    "form-variables": [{
                        "ref": "Status",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Policy Suggested",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }],
                    "subject": "\"Policy - not Eligible\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "Unique Hit Policy Output",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);",
                    "notify-type": "Message Only"
                },
                "name": "Notify User",
                "id": "UserTask_1jxsrxy",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1oevike",
                "incoming": "SequenceFlow_si41h5",
                "businessProp": {
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Role1",
                        "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "formType": "Custom",
                    "fromUser": "\"Policy Update\"",
                    "form-variables": [{
                        "ref": "Status",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Policy Suggested",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }],
                    "subject": "\"Eligible\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "Unique Hit Policy Output",
                    "notify-type": "Message Only"
                },
                "name": "NotifyUser",
                "id": "UserTask_1xnhokj",
                "type": "bpmn:userTask",
                "events": []
            }
        ]
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_1hzbd6n",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1rmzydr",
                    "Bounds": {
                        "cx": 124,
                        "cy": 271.5,
                        "x": 106,
                        "width": 36,
                        "y": 242,
                        "height": 59
                    },
                    "id": "StartEvent_1rmzydr_ve"
                },
                {
                    "bpmnElement": "UserTask_1jxsrxy",
                    "Bounds": {
                        "cx": 759.0000228881836,
                        "cy": 126,
                        "x": 682.02001953125,
                        "width": 153.9600067138672,
                        "y": 87.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1jxsrxy_ve"
                },
                {
                    "bpmnElement": "EndEvent_q2vyra",
                    "Bounds": {
                        "cx": 1104,
                        "cy": 236,
                        "x": 1086,
                        "width": 36,
                        "y": 206.5,
                        "height": 59
                    },
                    "id": "EndEvent_q2vyra_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1qfvn8v",
                    "Bounds": {
                        "cx": 258,
                        "cy": 271.5,
                        "x": 181.0199966430664,
                        "width": 153.9600067138672,
                        "y": 233.33499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1qfvn8v_ve"
                },
                {
                    "bpmnElement": "ServiceTask_gdhtlx",
                    "Bounds": {
                        "cx": 481.99999237060547,
                        "cy": 126,
                        "x": 405.0199890136719,
                        "width": 153.9600067138672,
                        "y": 87.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_gdhtlx_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_1vrru7v",
                    "Bounds": {
                        "cx": 482,
                        "cy": 290.5,
                        "x": 457,
                        "width": 50,
                        "y": 277,
                        "height": 73
                    },
                    "id": "ExclusiveGateway_1vrru7v_ve"
                },
                {
                    "bpmnElement": "ServiceTask_a1jrr3",
                    "Bounds": {
                        "cx": 624,
                        "cy": 301.99999237060547,
                        "x": 547.0199966430664,
                        "width": 153.9600067138672,
                        "y": 263.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_a1jrr3_ve"
                },
                {
                    "bpmnElement": "UserTask_1xnhokj",
                    "Bounds": {
                        "cx": 824,
                        "cy": 301.99999237060547,
                        "x": 747.0199966430664,
                        "width": 153.9600067138672,
                        "y": 263.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1xnhokj_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "142",
                            "y": "260"
                        },
                        {
                            "x": "161.5099983215332",
                            "y": "260"
                        },
                        {
                            "x": "161.5099983215332",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "181.0199966430664",
                            "y": "271.4999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_o14gmo",
                    "id": "SequenceFlow_o14gmo_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "558.9799890136719",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "682.02001953125",
                            "y": "125.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1fri8ux",
                    "id": "SequenceFlow_1fri8ux_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "835.98001953125",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "960.990009765625",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "960.990009765625",
                            "y": "224.5"
                        },
                        {
                            "x": "1086",
                            "y": "224.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1hy5v5n",
                    "id": "SequenceFlow_1hy5v5n_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "334.97999664306644",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "395.98999450683596",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "395.98999450683596",
                            "y": "302"
                        },
                        {
                            "x": "456.99999237060547",
                            "y": "302"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1kjokvh",
                    "id": "SequenceFlow_1kjokvh_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "481.99999237060547",
                            "y": "277"
                        },
                        {
                            "x": "481.9999890136719",
                            "y": "164.16499908447264"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_y5zpfv",
                    "id": "SequenceFlow_y5zpfv_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 502,
                        "cy": 198,
                        "x": 462,
                        "width": 80,
                        "y": 186,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "507",
                            "y": "302"
                        },
                        {
                            "x": "547.0199966430664",
                            "y": "301.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1i2gnfo",
                    "id": "SequenceFlow_1i2gnfo_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 527,
                        "cy": 279,
                        "x": 487,
                        "width": 80,
                        "y": 267,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "700.9799966430664",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "747.0199966430664",
                            "y": "301.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_si41h5",
                    "id": "SequenceFlow_si41h5_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "900.9799966430664",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "993.4899983215332",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "993.4899983215332",
                            "y": "224.5"
                        },
                        {
                            "x": "1086",
                            "y": "224.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1oevike",
                    "id": "SequenceFlow_1oevike_ve"
                }
            ]
        },
        "id": "Process_1hzbd6n_ve"
    },
    "collaboration": {}
}