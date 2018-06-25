<?php

class CompetitionEntry extends DataObject {
  private static $db = [
    'Email' => 'Varchar(80)',
    'Name' => 'Varchar(60)',
    'Phone' => 'Varchar(20)',
    'Address' => 'Varchar(120)',
    'BroadbandProvider' => 'Varchar(40)',
    'NewsletterOptin' => 'Varchar(5)',
    'Shared' => 'Varchar(5)'
  ];
  private static $has_one = array(
    'CompetitionPage' => 'CompetitionPage'
  );
  public static $summary_fields = array(
  	'Name' => 'Name',
  	'Email' => 'Email',
    'Address'=> 'Address',
    'Phone'=> 'Phone',
    'BroadbandProvider' => 'Broadband Provider',
    'NewsletterOptin'=> 'Newsletter Subscriber',
    'Shared' => 'Has Extra Entry',
    'Created' => 'Entry Date'
  );
}
