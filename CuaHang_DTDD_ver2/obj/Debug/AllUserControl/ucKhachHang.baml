   M S B A M L   `   `   `  ����L  HCuaHang_DTDD_ver2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:CuaHang_DTDD_ver2.AllUserControl CuaHang_DTDD_ver2.AllUserControl  5      2    ,CuaHang_DTDD_ver2.AllUserControl.ucKhachHang   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @local.clr-namespace:CuaHang_DTDD_ver2.AllUserControl     5      V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      � -   5          � RowDefinitions  5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   $��Center=�6   $��Center=�69   $
��auto��6T   $
��auto��6b   .+�5      ��  #  MaterialDesignDisplay2TextBlock#��[  6   THÔNG TIN KHÁCH HÀNG5      5      � 5   
   $��1��6   $��	0,20,0,20q�6   .+�5      � $	��900��6   $��Center=�6   $��Center=�6<   .+�5      � .+�5      �� -   5         ��Name$ txtSDTKH��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Số điện thoại:��60    % !MaterialDesignFloatingHintTextBox#��[ 6`   $��14(�6�   $
��Bold"�6�   $	��150��6�   $��10, 20, 10, 0q�6�   �� 5      -   5        $ txtTenKH��5      $ Tên khách hàng:��60   #��[ 6a   $��14(�6�   $
��Bold"�6�   $	��320��6�   $��10, 20, 10, 0q�6�   �� 5      -   5        $ 
txtEmailKH��5      $ Email:��62   #��[ 6Z   $��14(�6�   $
��Bold"�6�   $	��320��6�   $��10, 20, 10, 0q�6�   �� 5       �� Orientation$ 
Horizontal=�5      .+�5      	� -   5        $��radNam��5      $��14(�5       $
��Bold"�5!         MaterialDesignTabRadioButton#��[ 5"      $��10, 20, 10, 0q�5#       d� 	IsChecked$
 TrueY�5$      $	��Nam��5%      	� 5&      -   5        $��radNu��5'      #��[ 5(      $��14(�5)      $
��Bold"�5*      $��10, 20, 10, 0q�5+      $ FalseY�5,      $
��Nữ��5-      5.      �� 5/      -   5        $ txtDiaChiKH��5/      $ Địa chỉ:��63   #��[ 6]   $��14(�6�   $
��Bold"�6�   $	��290��6�   $��10, 20, 10, 0q�6�   50      51      52      � 53   
   $��2��6   $��Center=�6   $��0,0,0,10q�69   .+�54      � .+�55      �� -   5         ��Name$ btnThem��56       $  MaterialDesignRaisedAccentButton#��[ 57      $	��130��58      $��50��6!   $��10,20,10,10q�59       � ToolTip$6 0Nhấn vào để mở các ô nhập thông tin��5:      .��5<      �� $ 
Horizontal=�6!   .+�5=      �� $��/Icon/003-plus.png��6    $��Uniform=�6<   6P   �� 5>      $��Thêm��6$      MaterialDesignTitleTextBlock#��[ 60   $��Center=�6f   6�   5?      5@      �� 5A      -	   5        $ btnXoa��5B      #��[ 5C      $	��130��5D      $��50��6!   $��10,20,10,10q�5E      $5 /Resource name: MaterialDesignRaisedAccentButton��5F      .��5H      �� $ 
Horizontal=�6!   .+�5I      �� $��/Icon/037-minus.png��6    $��Uniform=�6=   $��0,0,10,0q�6O   6c   �� 5J      $
��Xóa��6$   #��[ 6/   $��center=�6e   6�   5K      5L      �� 5N      -
   5        $ btnSua��5O      #��[ 5P      $	��130��5Q      $��50��6!   $��10,20,10,10q�5R      $5 /Resource name: MaterialDesignRaisedAccentButton��5S      .��5U      �� $ 
Horizontal=�6!   .+�5V      �� $��/Icon/002-pencil.png��6    $��Uniform=�6>   $��0,0,10,0q�6P   6d   �� 5W      $��Sửa��6$   #��[ 6/   $��Center=�6e   6�   5X      5Y      �� 5[      -   5        $ btnLuu��5\      #��[ 5]      $	��130��5^      $��50��6!   $��10,20,10,10q�5_      $5 /Resource name: MaterialDesignRaisedAccentButton��5`      .��5b      �� $ 
Horizontal=�6!   .+�5c      �� $��/Icon/save.png��6    $��Uniform=�68   $��0,0,10,0q�6J   6^   �� 5d      $
��Lưu��6$   $��Center=�6/   #��[ 6J   6�   5e      5f      5g      5h      � 5i   
   $��3��6   $��Center=�6     5j      �� 5k      6"   �� 5l      6"   .+�5n      � $��0��6   $
��auto��6    .+�5o      �� -   5        $ 
txtTimKiem��5o      $ Tìm kiếm:��6.   #��[ 6Y   $��13(�6�   $	��300��6�   $��10,0, 0, 10q�6�   6�   5p      � 5q      $��1��6   $	��400��6    $	��750��6-   .+�5r      �� $
��Auto=�6   .��5s      �� -   5        $��lsDanhSachKhachHang��5s      $��Center=�6:   $��15(�6W    �� View 5t      �� 5u      .P�5v   "   �� $��Số điện thoại��61    �� DisplayMemberBinding 6H   �� *SDTKH+6q   �� 5w   "   $��Tên khách hàng��61    6I   �� *TenKH+6r   �� 5x   "   $��Giới tính��61    6D   �� *
GioiTinh+6p   �� 5y   "   $��Email��61    6@   �� *Email+6i   �� 5z   "   $��Địa chỉ��61    6B   �� *DiaChi+6l   5{      5}      5~      5      5�      5�      5�      