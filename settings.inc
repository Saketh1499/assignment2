<?php

function assignment_submissions_settings_form($form, $form_state)
{
$form['extensions']['files'] = array(
		'#type' => 'textfield',
		'#title' => t('Allowed file extensions'),
		'#description' => t('Allowed file extensions for uploading.'),
		'#size' => 50,
		'#maxlength' => 255,
		'#required' => TRUE,
		'#default_value' => variable_get('assignment_submissions_upload_extensions', '')
	);
$form['submit'] = array(
		'#type' => 'submit',
		'#value' => t('Submit')
	);
	return $form;
}

function assignment_submissions_settings_form_validate($form, &$form_state)
{
	return;
}
function assignment_submissions_settings_form_submit($form, &$form_state)
{
	variable_set('assignment_submissions_upload_extensions', $form_state['values']['files']);
	drupal_set_message(t('Settings updated'), 'status');

}