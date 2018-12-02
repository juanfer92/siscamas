<?php

namespace sisCamas\Http\Controllers;

use Excel;
use sisCamas\Exports\UsersExport;

class ReporteExcelController extends Controller
{

    public function export()
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }

}
