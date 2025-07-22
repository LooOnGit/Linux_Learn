# 🐧 Linux Learning | Phát triển Linux nhúng

## 🔧 Board Support Package (BSP)
### Components | Thành phần
- Bootloader: Bộ nạp khởi động
  - U-Boot
  - Boot sequence
  - Boot parameters

- Linux kernel: Viết driver
  - Device Drivers: I2C/SPI/UART/CAN/GPIO, ...
  - Init hardware
  - Resource management
  - Device Tree

- Rootfs: Phát triển ứng dụng trên tầng usr space
  - File system structure
  - System services
  - User applications
  - Libraries & dependencies

- Toolchain: phát triển các ứng dụng trên tầng usr space
  - Cross compiler
  - Build system
  - Libraries
  - Debug tools

## 💻 Hardware Development | Phát triển phần cứng
### Requirements | Yêu cầu
- Làm một con bóng đèn đáp ứng chức năng bluetooth, zigbee v.v.. Chi phí

### Implementation | Thực hiện
B1: Tìm một cái thiết bị có sẵn trên thị trường đáp ứng được chức năng + chi phí mà bài toán ban đầu đưa ra.
B2: Design lại phần cứng, loại bỏ các thành phần không cần thiết.

## 🚀 Software Development | Phát triển phần mềm
### B1.0: System Setup | Thiết lập hệ thống
Bringup, Porting hệ điều hành lên cái phần cứng đã designed.
- Tối ưu lại các thành phần phần mềm của hệ thống:
  - u-boot
  - kernel
  - rootfs

### B1.1: Application Development | Phát triển ứng dụng
- Viết app
