<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use \Illuminate\Http\Request;
use Session;


class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    private $currentLang;
    private $setLang;
    public $websiteLanguages;
    
    public function __construct() {
        $this->websiteLanguages = config('global.WEBSITE_LANGUAGE');   
        \View::share(['websiteLanguages' => $this->websiteLanguages]);

        $segmentValue = \Request::segment(1);
        if ($segmentValue) {
            if (array_key_exists($segmentValue, $this->websiteLanguages)) {
                Session::put('websiteLang', '');
                Session::put('websiteLang', $segmentValue);
                \App::setLocale($segmentValue);
            } else {
                Session::put('websiteLang', '');
                Session::put('websiteLang', \App::getLocale());
                \App::setLocale(\App::getLocale());
            }
        }
    }

    /*
        * Function Name : generateFlashMessage
        * Purpose       : This function is to generate flash message
        * Author        :
        * Created Date  :
        * Modified date :
        * Input Params  : $type, $validationFailedMessages, $extraTitle = false
        * Return Value  : Mixed
    */
    public function generateFlashMessage($type, $validationFailedMessages, $extraTitle = false) {
        switch($type) {
            case 'success':
                if (!$extraTitle) {
                    $extraTitle = __('admin.message_success');
                }
                notyf()
                    ->position('x', 'right')
                    ->position('y', 'top')
                    ->duration(8000)
                    ->dismissible(true)
                    ->addSuccess($validationFailedMessages);
                break;
            case 'warning':
                if (!$extraTitle) {
                    $extraTitle = __('admin.message_warning');
                }
                notyf()
                    ->position('x', 'right')
                    ->position('y', 'top')
                    ->duration(8000)
                    ->dismissible(true)
                    ->addWarning($validationFailedMessages);
                break;
            case 'error':
                if (!$extraTitle) {
                    $extraTitle = __('admin.message_error');
                }
                notyf()
                    ->position('x', 'right')
                    ->position('y', 'top')
                    ->duration(8000)
                    ->dismissible(true)
                    ->addError($validationFailedMessages);
                break;
            default:
                if (!$extraTitle) {
                    $extraTitle = __('admin.message_info');
                }
                notyf()
                    ->position('x', 'right')
                    ->position('y', 'top')
                    ->duration(8000)
                    ->dismissible(true)
                    ->addInfo($validationFailedMessages);
        }
    }
}
