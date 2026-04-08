# Phân tích LU & Ứng dụng giải hệ phương trình tuyến tính

Dự án này là Bài tập lớn môn Đại số tuyến tính, trình bày về cơ sở lý thuyết của phương pháp phân tích ma trận LU và việc ứng dụng thuật toán này trên môi trường MATLAB để giải hệ phương trình tuyến tính $Ax=b$.

**Trường Đại học Bách Khoa - ĐHQG TP.HCM**

## 👥 Thông tin nhóm thực hiện (Nhóm 12 - Lớp L09)
*   **Giảng viên hướng dẫn:** Cô Nguyễn Xuân Mỹ 
*   **Thành viên:**
    *   Huỳnh Nguyễn Tất Thắng (2314055) 
    *   Bùi Đắc Phúc Thịnh (2313255) 
    *   Trần Lê Ngọc Thịnh (2313312) 
    *   Vũ Thị Hoài Thu (2313343) 
    *   Nguyễn Minh Thuận (2313355) 
    *   Nguyễn Khắc Thường (2313404) 
    *   Hồ Lê Thuỷ Tiên (2313414) 
    *   Võ Khắc Tín (2313464) 

## 📖 Tổng quan lý thuyết
Phân tích LU (LU decomposition) là phương pháp phân tích một ma trận $A$ thành tích của một ma trận tam giác dưới $L$ (Lower) và một ma trận tam giác trên $U$ (Upper):
$$A = L \cdot U$$

Điều kiện để phân tích LU tồn tại là ma trận $A$ không có ma trận con chính nào có định thức bằng 0. 

**Ứng dụng giải hệ phương trình $Ax = b$:**
1.  Phân tích $A = L \cdot U$.
2.  Giải hệ phương trình $Ly = b$ để tìm ma trận $y$. 
3.  Giải hệ phương trình $Ux = y$ để tìm nghiệm $x$. 

## 💻 Mã nguồn MATLAB
Thuật toán được lập trình trên MATLAB thực hiện các bước sau:
1. Nhập ma trận đầu vào $A$ và ma trận kết quả $B$.
2. Sử dụng các phép biến đổi sơ cấp để đưa ma trận $A$ về ma trận tam giác trên $U$ và tạo ra ma trận tam giác dưới $L$.
3. Giải tuần tự hai hệ phương trình tam giác để xuất ra nghiệm $X$ cuối cùng. 

### Cú pháp chạy chương trình:
Mở file `LU_decomposition.m` trong thư mục `src/` bằng MATLAB và ấn **Run** hoặc gõ lệnh trực tiếp trong Command Window:
```matlab
% Nhập ma trận A
A = input('Nhap ma tran A = ');
% Nhập ma trận kết quả B
B = input('Nhap ma tran ket qua B: ');
