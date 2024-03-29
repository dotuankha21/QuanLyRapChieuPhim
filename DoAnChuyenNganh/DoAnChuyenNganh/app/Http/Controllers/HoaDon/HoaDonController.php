<?php

namespace App\Http\Controllers\HoaDon;

use App\Http\Controllers\Controller;
use App\Models\HoaDon;
use App\Models\NhanVien;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HoaDonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hoadon = HoaDon::join('Khachhang', 'KhachHang.idKH', '=', 'HoaDon.MAKHACHHANG')
                   
                    ->select('HoaDon.*', 'KhachHang.HoTen', 'KhachHang.SDT')
                    ->get();
        return response()->json($hoadon);
    }
    public function thongtinxuatpdf($id)
    {
        $hoadon = HoaDon::join('ChiTietVe', 'ChiTietVe.MAHOADON', '=', 'HoaDon.MAHOADON')
        ->join('Ve', 'Ve.idVe', '=', 'ChiTietVe.idVe')
        ->select('HoaDon.*', 'Ve.idVe', 'Ve.MaGheNgoi','ChiTietVe.GiaVe')
        ->where('HoaDon.MAHOADON', '=', $id)
        ->get();
    
        return $hoadon;
    }
    public function nhanve($id)
    {
        $hoadon = HoaDon::where('MAHOADON', $id)->first(); 
        if ($hoadon) {
            
            $hoadon->TinhTrang = 1; 
            $nhanvien=NhanVien::where('idTK',Auth::user()->id)->first();
            $hoadon->MANHANVIEN=$nhanvien->idNhanVien;
            $hoadon->save(); 
            $data1 = HoaDon::join('ChiTietThucAn', 'ChiTietThucAn.MAHOADON', '=', 'HoaDon.MAHOADON')
            ->join('ThucAn', 'ThucAn.MaThucAn', '=', 'ChiTietThucAn.MATHUCAN')
            ->select('HoaDon.*', 'ThucAn.MATHUCAN', 'ThucAn.TENTHUCAN','ChiTietThucAn.SOLUONG','ThucAn.DONGIA')
            ->where('HoaDon.MAHOADON', '=', $id)
            ->get();
            $data = HoaDon::join('ChiTietVe', 'ChiTietVe.MAHOADON', '=', 'HoaDon.MAHOADON')
            ->join('Ve', 'Ve.idVe', '=', 'ChiTietVe.idVe')
            ->select('HoaDon.*', 'Ve.idVe', 'Ve.MaGheNgoi','ChiTietVe.GiaVe')
            ->where('HoaDon.MAHOADON', '=', $id)
            ->get();
     
            $pdf = app('dompdf.wrapper')->loadView('PDF.test', compact('data','data1'));
    
            return $pdf->download('document.pdf');
            return back();
        } else {
           
            return "Không tìm thấy hóa đơn với MAHOADON = $id";
        }
    }
    public function getlichsumua(){
        $lsmuahang=HoaDon::where('MAKHACHHANG',Auth::user()->id)->get();
        return view('Home.LichSuMuaHang',['lsmuahang'=>$lsmuahang]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
