<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Http\Traits\GeneralMethodsTrait;
use App\Models\User;

class AuthController extends Controller
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
    public $viewFolderPath  = 'admin.auth';
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
    public function __construct() {
        parent::__construct();

        $this->management   = 'Login';
        $this->model        = new User();

        // Variables assign for view page
        $this->assignShareVariables();     
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $data['page_title']     = __('admin.label_login');
        $data['panel_title']    = __('admin.label_login');

        if (Auth::guard('admin')->check()) {
            return redirect()->route('admin.'.\App::getLocale().'.dashboard');
        } else {
            try {
                if ($request->isMethod('POST')) {
                    $validationCondition = array(
                        'email'     => 'required|regex:'.config('global.EMAIL_REGEX'),
                        'password'  => 'required',
                    );
                    $validationMessages = array(
                        'email.required'    => __('admin.error_enter_email'),
                        'email.regex'       => __('admin.error_enter_valid_email'),
                        'password.required' => __('admin.error_enter_password'),
                    );
                    $validator = \Validator::make($request->all(), $validationCondition, $validationMessages);
                    if ($validator->fails()) {
                        $validationFailedMessages = validationMessageBeautifier($validator->messages()->getMessages());                        
                                                
                        $this->generateFlashMessage('error', $validationFailedMessages, false);
                        return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
                    } else {
                        $rememberMe = (!empty($request->remember_me)) ? true : false;
                        if (Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password, 'type' => 'SA', 'status' => '1'], $rememberMe)) {
                            if (Auth::guard('admin')->user()->checkRolePermission == null) {
                                Auth::guard('admin')->logout();

                                $this->generateFlashMessage('error', __('admin.error_permission_denied'), false);
                                return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
                            } else {
                                $user  = \Auth::guard('admin')->user();
                                $user->lastlogintime = strtotime(date('Y-m-d H:i:s'));
                                $user->save();
                                return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.dashboard');
                            }                            
                        } else if (Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password, 'type' => 'A', 'status' => '1'])) {
                            $user  = \Auth::guard('admin')->user();
                            $user->lastlogintime = strtotime(date('Y-m-d H:i:s'));
                            $user->save();
                            return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.dashboard');                            
                        } else {
                            $this->generateFlashMessage('error', __('admin.error_invalid_credentials_inactive_user'), false);
                            return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
                        }
                    }
                }



                // If admin is not logged in, show the login form //
                return view($this->viewFolderPath.'.login', $data);

            } catch (Exception $e) {
                dd($e->getMessage());

                $this->generateFlashMessage('error', __('admin.error_invalid_credentials'), false);
                return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
            } catch (\Throwable $e) {
                dd($e->getMessage());
                
                $this->generateFlashMessage('error', $e->getMessage(), false);
                return redirect()->route($this->routePrefix.'.'.\App::getLocale().'.login')->withInput();
            }
        }

        // notyf()
        //     ->position('x', 'center')
        //     ->position('y', 'top')
        //     ->addError('There was a problem re-activating your account............');


        // return view('welcome');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        dd('here');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function logout()
    {
        if (Auth::guard('admin')->logout()) {
            return redirect()->route('admin.'.\App::getLocale().'.login'); // if logout is successful, proceed to login page
        } else {
            return redirect()->route('admin.'.\App::getLocale().'.dashboard'); // if logout fails, redirect tyo dashboard
        }
    }
}
