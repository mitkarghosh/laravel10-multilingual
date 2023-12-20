<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Http\Traits\GeneralMethodsTrait;
use App\Models\User;

class AccountController extends Controller
{
    use GeneralMethodsTrait;
    public $controllerName  = 'Account';
    public $management;
    public $modelName       = 'User';
    public $breadcrumb;
    public $routePrefix     = 'admin';
    public $pageRoute       = 'account';
    public $listUrl         = '';
    public $addUrl          = '';
    public $editUrl         = '';
    public $viewFolderPath  = 'admin.account';
    public $model           = 'User';

    /*
        * Function Name : __construct
        * Purpose       : It sets some public variables for being accessed throughout this
        *                   controller and its related view pages
        * Author        :
        * Created Date  :
        * Modified date :
        * Input Params  : Void
        * Return Value  : Mixed
    */
    public function __construct($data = null) {
        parent::__construct();

        $this->management           = 'Account';
        $this->model                = new User();
        // $this->websiteSettingModel  = new WebsiteSetting();

        // Assign breadcrumb
        $this->assignBreadcrumb();

        // Variables assign for view page
        $this->assignShareVariables();        
    }

    /*
        * Function name : dashboard
        * Purpose       : After login admin will see dashboard page
        * Author        :
        * Created Date  :
        * Modified date :
        * Input Params  : 
        * Return Value  : Returns to the dashboard page
    */
    public function dashboard() {
        $data = [
            'pageTitle'     => trans('custom_admin.label_dashboard'),
            'panelTitle'    => trans('custom_admin.label_dashboard'),
            'pageType'      => 'LISTPAGE'
        ];

        try {
            $data['totalCustomers']         = User::where(['status' => '1','type' => 'C'])->whereNull(['role_id','deleted_at'])->count();
            $data['totalEntrepreneurs']     = User::where(['status' => '1','type' => 'AD'])->whereNull(['role_id','deleted_at'])->count();
            
            return view($this->viewFolderPath.'.dashboard', $data);
        } catch (Exception $e) {
            Auth::guard('admin')->logout();
            $this->generateToastMessage('error', trans('custom_admin.error_something_went_wrong'), false);
            return redirect()->route($this->routePrefix.'.login');

        } catch (\Throwable $e) {
            Auth::guard('admin')->logout();
            $this->generateToastMessage('error', $e->getMessage(), false);
            
            return redirect()->route($this->routePrefix.'.login');
        }
    }

}
