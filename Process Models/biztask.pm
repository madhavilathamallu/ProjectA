{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1g7aeo3",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_164eq7u",
                "sourceRef": "StartEvent_z4dm6o",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_11lzixz",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_14ew4dn",
                "sourceRef": "BusinessRuleTask_1g7aeo3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_13hin9e",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_vd4adx",
                "sourceRef": "UserTask_11lzixz",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_vd4adx",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_13hin9e",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_14ew4dn",
            "incoming": "SequenceFlow_164eq7u",
            "businessProp": {
                "output": "res",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/com.inputoutformat.model/com.inputoutformat.decisiontable",
                "parameters-collaps": [{
                    "reference": "inputbiz1",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "inputbiz1",
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
                            "parentRef": "inputbiz1"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "inputbiz1"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"inputoutformatTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/inputoutputformat/Decision Models\",\"properties\":{\"isWorkspaceReady\":true},\"meta\":\"{}\",\"size\":0,\"errorMessage\":null,\"parentId\":\"3ce3d324-1d38-49f6-86f7-66d66a968b00\",\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":null,\"namespaceId\":\"com.inputoutformat\",\"content\":null,\"id\":\"71d2a0b1-5723-4a88-8c62-0b88de1500bc\",\"createdOn\":\"2020-12-07T12:12:26.609+05:30\",\"modifiedOn\":\"2020-12-07T12:17:18.071+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}",
                "decisionmodel-id": "com.inputoutformat.model",
                "inputbiz1": [
                    {
                        "name": "name",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "\"mad\""
                    },
                    {
                        "name": "age",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "34"
                    },
                    {
                        "name": "dob",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "2020-01-01"
                    },
                    {
                        "name": "passfail",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "\"pass\""
                    }
                ],
                "parameters": [
                    {
                        "name": "name",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "\"mad\""
                    },
                    {
                        "name": "age",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "34"
                    },
                    {
                        "name": "dob",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "2020-01-01"
                    },
                    {
                        "name": "passfail",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": "\"pass\""
                    }
                ],
                "decisiontable-id": "com.inputoutformat.decisiontable"
            },
            "name": "biztask",
            "id": "BusinessRuleTask_1g7aeo3",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_164eq7u",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_z4dm6o",
            "type": "bpmn:startEvent"
        },
        "id": "Process_rhhtto",
        "userTask": {
            "outgoing": "SequenceFlow_vd4adx",
            "incoming": "SequenceFlow_14ew4dn",
            "businessProp": {
                "formType": "Custom",
                "fromUser": "\"superadmin\"",
                "form-variables": [{
                    "ref": "Result",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Data",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Test output Format\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Expression",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "Show Result",
                "pre-processor": "$pm.addMemVariable(\"Result\",res.data);",
                "notify-type": "Message Only",
                "assignee-exp": "\"test\""
            },
            "name": "notifyuser",
            "id": "UserTask_11lzixz",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_rhhtto",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_z4dm6o",
                    "Bounds": {
                        "cx": 205,
                        "cy": 274.5,
                        "x": 187,
                        "width": 36,
                        "y": 245,
                        "height": 59
                    },
                    "id": "StartEvent_z4dm6o_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1g7aeo3",
                    "Bounds": {
                        "cx": 445,
                        "cy": 260,
                        "x": 368.0199966430664,
                        "width": 153.9600067138672,
                        "y": 221.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1g7aeo3_ve"
                },
                {
                    "bpmnElement": "EndEvent_13hin9e",
                    "Bounds": {
                        "cx": 901,
                        "cy": 273,
                        "x": 883,
                        "width": 36,
                        "y": 243.5,
                        "height": 59
                    },
                    "id": "EndEvent_13hin9e_ve"
                },
                {
                    "bpmnElement": "UserTask_11lzixz",
                    "Bounds": {
                        "cx": 698.0000228881836,
                        "cy": 288,
                        "x": 621.02001953125,
                        "width": 153.9600067138672,
                        "y": 249.83499908447266,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_11lzixz_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "223",
                            "y": "263"
                        },
                        {
                            "x": "295.5099983215332",
                            "y": "263"
                        },
                        {
                            "x": "295.5099983215332",
                            "y": "259.9999990844727"
                        },
                        {
                            "x": "368.0199966430664",
                            "y": "259.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_164eq7u",
                    "id": "SequenceFlow_164eq7u_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "521.9799966430664",
                            "y": "259.9999990844727"
                        },
                        {
                            "x": "571.5000080871582",
                            "y": "259.9999990844727"
                        },
                        {
                            "x": "571.5000080871582",
                            "y": "287.9999990844727"
                        },
                        {
                            "x": "621.02001953125",
                            "y": "287.9999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_14ew4dn",
                    "id": "SequenceFlow_14ew4dn_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "774.98001953125",
                            "y": "287.9999990844727"
                        },
                        {
                            "x": "828.990009765625",
                            "y": "287.9999990844727"
                        },
                        {
                            "x": "828.990009765625",
                            "y": "261.5"
                        },
                        {
                            "x": "883",
                            "y": "261.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_vd4adx",
                    "id": "SequenceFlow_vd4adx_ve"
                }
            ]
        },
        "id": "Process_rhhtto_ve"
    },
    "collaboration": {}
}