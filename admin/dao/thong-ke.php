<?php
    require_once ('pdo.php');

    function thong_ke_hang_hoa(){
    $sql = "SELECT lo.ma_loai, lo.ten_loai,"
            . " COUNT(*) so_luong,"
            . " MIN(hh.don_gia) gia_min,"
            . " MAX(hh.don_gia) gia_max,"
            . " SUM(hh.don_gia) gia_sum"
            . " FROM hang_hoa hh "
            . " JOIN loai_hang lo ON lo.ma_loai=hh.ma_loai "
            . " GROUP BY lo.ma_loai, lo.ten_loai";
    return pdo_query($sql);
    }

    function thong_ke_binh_luan(){
    $sql = "SELECT hh.ma_hh, hh.ten_hh,"
            . " COUNT(*) so_luong,"
            . " MIN(bl.ngay_bl) cu_nhat,"
            . " MAX(bl.ngay_bl) moi_nhat"
            . " FROM binh_luan bl "
            . " JOIN hang_hoa hh ON hh.ma_hh=bl.ma_hh "
            . " GROUP BY hh.ma_hh, hh.ten_hh"
            . " HAVING so_luong > 0";
    return pdo_query($sql);
    }

    function thong_ke_doanh_thu(){
    $sql = "SELECT MONTH(STR_TO_DATE(hd.ngay_mua, '%d-%m-%Y')) AS thang,
                   SUM(ct.so_luong * ct.don_gia) AS doanh_thu,
                   SUM(ct.so_luong) AS so_luong_ban
            FROM hoa_don hd
            JOIN hoa_don_chi_tiet ct ON hd.ma_hd = ct.ma_hd
            WHERE hd.tinh_trang = '1'
            GROUP BY MONTH(STR_TO_DATE(hd.ngay_mua, '%d-%m-%Y'))";

    return pdo_query($sql);
    }
    
?>