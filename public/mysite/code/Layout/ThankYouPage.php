<?php
class ThankYouPage extends Page {
  private static $has_one = array(
    'HeaderImage' => 'Image'
  );

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    // Header Image
    // $uploadField = new UploadField('HeaderImage', 'Header Image');
    // $uploadField->allowedExtensions = array('jpg', 'png', 'gif','jpeg');
    // $uploadField->setAllowedMaxFileNumber(1);
    // $fields->addFieldToTab('Root.HeaderSettings',$uploadField);

    return $fields;
  }
}

class ThankYouPage_Controller extends Page_Controller {
  private static $allowed_actions = array('updateFBEntry','updateTwEntry','updateEmEntry');

  public function updateFBEntry() {
    $this->performUpdate();
    //$this->redirect( Director::baseURL() . $this->URLSegment . "/?success=1" );
    $this->redirect( Director::baseURL() . $this->URLSegment . "/?success=1" );
  }
  public function updateTwEntry() {
    $this->performUpdate();
    $this->redirect( Director::baseURL() . $this->URLSegment . "/?success=1" );
  }
  public function updateEmEntry() {
    $this->performUpdate();
    $this->redirect( Director::baseURL() . $this->URLSegment . "/?success=1" );
  }

  function performUpdate() {
    $email = Session::get('cust_email');
    $entry = DataObject::get_one('CompetitionEntry','Email = \''.$email.'\'');
    $entry->Shared = 'true';
    $entry->write();
  }

  public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
    Requirements::css("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
	}

}
