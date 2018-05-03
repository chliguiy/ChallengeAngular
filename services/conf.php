<?php
class CONF {
	
	/* Flag for demo version */
	public $DEMO_VERSION = false;

	/* Data configuration for database */
	public $DB_SERVER = "jbel-annour.com";
	public $DB_USER = "cl36-market";
	public $DB_PASSWORD = "marketodyssee";
	public $DB_NAME = "cl36-market";
	
	/* FCM key for notification */
	public $FCM_KEY = "AIzaSyCv-90mFpx3SCWlIKSXXXXXXXXXXXXXXXXXXXXXX";


    /* [ IMPORTANT ] be careful when edit this security code, use AlphaNumeric only*/
    /* This string must be same with security code at Android, if its different android unable to submit order */
	public $SECURITY_CODE = "8V06LupAaMBLtQqyqTxmcN42nn27FlejvaoSM3zXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
	
}	
?>