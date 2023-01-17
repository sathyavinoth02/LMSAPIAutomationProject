@batch
Feature: Batch API Testing for LMS Batch module

  @batch_put_ByID
  Scenario: The user can update a batch by Batch ID with PUT request 
    Given A service with "URL" is available
    When User add body with new batch name and batch description
    And User makes a "PUT_ByID" request with endpoint "/batches/:(BatchId)"
    Then User get batch status code as 200