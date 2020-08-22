Feature: ITEM API - Clean

  Scenario: Como usuario comun
  Quiero crear un item
  Para monitoriar mis tareas

    Given I have token ready to use in Todo.ly
    When I send a POST request https://todo.ly/api/items.json with json body
    """
    {
      "Content" : "NEW ITEM04",
    }
    """
    Then I expected the response code 200
    And I expected the jsonBody
    """
    {
    "Id": IGNORE,
    "Content": "NEW ITEM04",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": null,
    "Priority": 4,
    "LastSyncedDateTime": "IGNORE",
    "Children": [

    ],
    "DueDateTime": null,
    "CreatedDate": "IGNORE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "IGNORE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 665898
   }
    """
    And I get the value the attribute Id and save in ID_ITEM
    And I send a PUT request https://todo.ly/api/items/ID_ITEM.JSON with json body
    """
    {
      "Content" : "ITEM UPDATE"
    }
    """
    Then I expected the response code 200
    And I expected the jsonBody
    """
    {
    "Id": IGNORE,
    "Content": "ITEM UPDATE",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": null,
    "Priority": 4,
    "LastSyncedDateTime": "IGNORE",
    "Children": [

    ],
    "DueDateTime": null,
    "CreatedDate": "IGNORE",
    "LastCheckedDate": null,
    "LastUpdatedDate": "IGNORE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 665898
   }
    """
    And I get the value the attribute Id and save in ID_DELETE
    And I send a DELETE request https://todo.ly/api/items/ID_DELETE.JSON with json body
    """
    """
    Then I expected the response code 200