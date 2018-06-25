<?php

class CompetitionPage extends Page {
  private static $has_one = array(
    'HeaderImage' => 'Image'
  );
  private static $has_many = array(
      'CompetitionEntries' => 'CompetitionEntry'
  );
  private static $allowed_children = array('ThankYouPage');

  public function getCMSFields() {
    $fields = parent::getCMSFields();
    // Entries Grid
    $gridFieldConfig = GridFieldConfig::create()
      ->addComponents(
        new GridFieldToolbarHeader(),
        new GridFieldAddNewButton('toolbar-header-right'),
        new GridFieldStreamExportButton('toolbar-header-right'),
        new GridFieldSortableHeader(),
        new GridFieldDataColumns(),
        new GridFieldPaginator(10),
        new GridFieldEditButton(),
        new GridFieldDeleteAction(),
        new GridFieldDetailForm());
    $gridField = new GridField(
      "CompetitionEntries",
      "Competition Entries",
      $this->CompetitionEntries(),
      $gridFieldConfig
    );
    $fields->addFieldToTab('Root.CompetitionEntries', $gridField);
    return $fields;
  }
}
class CompetitionPage_Controller extends Page_Controller {
  private static $allowed_actions = array('EntryForm');
  public function EntryForm() {
    $fields = new FieldList(
      TextField::create('Name')
        ->setTitle('Name <span class="form-required">*</span>')
        ->setMaxLength(60)
        ->setAttribute('placeholder', 'e.g. John Smith')
        ->addExtraClass("full-width"),
      TextField::create('Address')
        ->setTitle('Address <span class="form-required">*</span>')
        ->setMaxLength(60)
        ->setAttribute('placeholder', 'e.g. 13A Queenwood Avenue, Queenwood, Hamilton')
        ->addExtraClass("full-width"),
      TextField::create('Phone')
        ->setTitle('Contact phone number <span class="form-required">*</span>')
        ->setMaxLength(20)
        ->setAttribute('placeholder', 'e.g. 1234 5678')
        ->addExtraClass("full-width"),
      EmailField::create('Email')
        ->setTitle('Email address <span class="form-required">*</span>')
        ->setMaxLength(100)
        ->setAttribute('placeholder', 'e.g. johnsmith@someemaildomain.com')
        ->addExtraClass("full-width"),
      DropdownField::create('BroadbandProviderID', 'Broadband provider <span class="form-required">*</span>', array(
        "2degrees"=>"2degrees",
        "2Talk"=>"2Talk",
        "Actrix"=>"Actrix",
        "BigPipe"=>"Big Pipe",
        "Bryte"=>"Bryte",
        "Compass"=>"Compass",
        "ICONZWebvisions"=>"ICONZ-Webvisions",
        "InspireNet"=>"Inspire Net",
        "Kiwilink"=>"Kiwilink",
        "Megatel"=>"Megatel",
        "MyRepublic"=>"MyRepublic",
        "Now"=>"Now",
        "Orcon"=>"Orcon",
        "PrimoWireless"=>"Primo Wireless",
        "SkinnyBroadband"=>"Skinny Broadband",
        "Slingshot"=>"Slingshot",
        "Spark"=>"Spark",
        "StuffFibre"=>"Stuff Fibre",
        "Telnet"=>"Telnet",
        "Trustpower"=>"Trustpower",
        "UnlimitedInternet"=>"Unlimited Internet",
        "VibeCommunications"=>"Vibe Communications",
        "Vodafone"=>"Vodafone",
        "Vorco"=>"Vorco",
        "Voyager"=>"Voyager",
        "WirelessNation"=>"Wireless Nation",
        "Other"=>"Other")
      )->setEmptyString('e.g. Spark')
      ->addExtraClass("full-width"),
      CheckboxField::create('NewsletterOptin','Sign up to receive more
        information including news, updates and marketing from Chorus.'),
      CheckboxField::create('AcceptTCs','Accept our <a href="/terms-and-conditions-chorus-competition.pdf"
        target="_blank">terms and conditions</a>.')
    );
    $actions = new FieldList(
      FormAction::create("submitForm")
        ->setTitle("Submit")
        ->addExtraClass('btn btn-standard'),
      ResetFormAction::create("cancelForm")
        ->setTitle('Cancel')
        ->addExtraClass('btn btn-standard btn-cancel')
    );
    $required = new RequiredFields('Name','Address','Email','Phone','BroadbandProviderID','AcceptTCs');
    $form = new Form($this, 'EntryForm', $fields, $actions, $required);
    return $form;
  }

  public function submitForm($data, $form) {
    $check = CompetitionEntry::get()->filter('Email', $data['Email'])->first();
    // Duplicate Entry
    if($check) {
      $form->addErrorMessage('Email', 'Sorry, you have already entered this competition!', 'bad');
      return $this->redirectBack();
    // Successful Entry
    } else {
      // Check for newsletter optin
      $sub = $data['NewsletterOptin'];
      if($sub = '' || $sub === null) { $sub = 'false'; } else { $sub = 'true'; }
      // Build new CompetitionEntry object
      $newEntry = CompetitionEntry::create();
      $newEntry->Name = $data['Name'];
      $newEntry->Address = $data['Address'];
      $newEntry->Phone = $data['Phone'];
      $newEntry->Email = $data['Email'];
      $newEntry->BroadbandProvider = $data['BroadbandProviderID'];
      $newEntry->NewsletterOptin = $sub;
      $newEntry->Shared = 'false';
      $newEntry->CompetitionPageID = $this->ID;
      $newEntry->write();
      Session::set('cust_email', $data['Email']);
    }
    return $this->redirect('thank-you');
  }
}
