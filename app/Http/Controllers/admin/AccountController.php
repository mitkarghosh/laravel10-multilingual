<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Http\Traits\GeneralMethodsTrait;
use App\Models\User;
use App\Models\Product;
use App\Models\DeliverySlot;
use App\Models\Order;
use App\Models\PaymentSetting;
use App\Models\Drink;
use App\Models\SpecialMenu;
use App\Models\Category;
use App\Models\Tag;

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
            $data['totalUser'] = User::where(['status' => '1', 'type' => 'C'])->whereNull('role_id')->whereNull('deleted_at')->count();
            $data['totalProducts'] = Product::where('status', '1')->whereNull('deleted_at')->count();
            $data['totalOrders'] = Order::where('order_status', 'O')->count();
            $data['totalOrdersDelivered'] = Order::where(['order_status' => 'O', 'status' => 'D'])->count();
            $data['totalNewOrders'] = Order::where(['order_status' => 'O', 'status' => 'P', 'is_print' => '0'])->count();
            $data['totalOrdersProcessing'] = Order::where(['order_status' => 'O', 'status' => 'P', 'is_print' => '1'])->count();
            $data['newOrdersListing'] = Order::where(['order_status' => 'O', 'status' => 'P', 'is_print' => '0'])->orderBy('created_at', 'desc')->limit(9)->get();
            $data['processingOrdersListing'] = Order::where(['order_status' => 'O', 'status' => 'P', 'is_print' => '1'])->orderBy('created_at', 'desc')->limit(9)->get();
            $data['newUsers'] = User::where(['status' => '1', 'type' => 'C'])->orderBy('created_at', 'desc')->whereNull('deleted_at')->limit(15)->get();
            $data['toatlActiveDrinks'] = Drink::where(['status' => '1'])->whereNull('deleted_at')->count();
            $data['toatlInactiveDrinks'] = Drink::where(['status' => '0'])->whereNull('deleted_at')->count();
            $data['toatlActiveSpecials'] = SpecialMenu::where(['status' => '1'])->whereNull('deleted_at')->count();
            $data['toatlInactiveSpecials'] = SpecialMenu::where(['status' => '0'])->whereNull('deleted_at')->count();
            $data['toatlActiveCategories'] = Category::where(['status' => '1'])->whereNull('deleted_at')->count();
            $data['toatlInactiveCategories'] = Category::where(['status' => '0'])->whereNull('deleted_at')->count();
            $data['toatlActiveTags'] = Tag::where(['status' => '1'])->whereNull('deleted_at')->count();
            $data['toatlInactiveTags'] = Tag::where(['status' => '0'])->whereNull('deleted_at')->count();
            
            return view($this->viewFolderPath.'.dashboard', $data);
        } catch (Exception $e) {
            dd($e->getMessage());

            Auth::guard('admin')->logout();
            $this->generateFlashMessage('error', __('admin.error_something_went_wrong'), false);
            return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
        } catch (\Throwable $e) {
            dd($e->getMessage());

            Auth::guard('admin')->logout();
            $this->generateFlashMessage('error', $e->getMessage(), false);
            
            return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
        }
    }

}
