<?php

namespace sisCamas\Exports;

use DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;

class UsersExport implements FromCollection
{
    use Exportable;
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {

        //return User::all();

        $RES = DB::table('cama_his')
            ->select('ID_HCAMA')
            ->get();
        //dd($RES);
        return RES;
    }
}
