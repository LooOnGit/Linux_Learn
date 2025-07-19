# 🐧 Linux_Learn

## 📚 Agenda

### I. 📝 Giới thiệu về Makefile

#### 1.1 Khái niệm
- Makefile là một tập tin script chứa các chỉ thị (rules) để build project
- Được sử dụng để tự động hóa quá trình biên dịch và liên kết các file trong project
- Chương trình `make` sẽ đọc nội dung trong Makefile và thực thi theo các rule được định nghĩa

#### 1.2 Cấu trúc của Makefile

```
====== Cấu trúc của một Rule trong Makefile ======

hellomake: hello.c main.c             # Rule header
|         |                           # 
|         +-> Dependencies            # Các file cần có
|             (file phụ thuộc)        # để tạo target
|
+-> Target (tên file đích)

    gcc -o hellomake hello.c main.c   # Command line
    ^   ^          ^                  # 
    |   |          |                  #
    |   |          +-> Source files   # File nguồn
    |   |
    |   +-> Output flag              # Flag output
    |
    +-> Compiler command            # Lệnh biên dịch
    (phải có Tab ở đầu dòng)
```

Một rule trong Makefile bao gồm 4 phần chính:

1. **Target** 🎯:
   - Tên file cần tạo ra (ví dụ: `hellomake`)
   - Hoặc tên hành động cần thực hiện (ví dụ: `clean`, `all`)

2. **Dependencies** 🔗:
   - Các file cần có để tạo ra target
   - Trong ví dụ: `hello.c` và `main.c`
   - Nếu các file này thay đổi, target sẽ được build lại

3. **Tab** ➡️:
   - Bắt buộc phải có dấu tab ở đầu dòng lệnh
   - Không thể thay thế bằng dấu cách
   - Đây là quy tắc cú pháp bắt buộc của Makefile

4. **Action** ⚡:
   - Lệnh thực thi để tạo ra target
   - Ví dụ: `gcc -o hellomake hello.c main.c`
   - Có thể có nhiều lệnh, mỗi lệnh phải bắt đầu bằng tab

Cú pháp tổng quát:
```makefile
target: dependencies
[tab]  commands
```

#### 1.3 Các thành phần cơ bản
- **Biến (Variables)**: `CC = gcc`, `CFLAGS = -Wall`
- **Comments**: bắt đầu bằng dấu #
- **Phony Targets**: `.PHONY: clean all`
- **Pattern Rules**: `%.o: %.c`

#### 1.4 Ví dụ đơn giản
```makefile
CC = gcc
CFLAGS = -Wall

program: main.o utils.o
    $(CC) $(CFLAGS) -o program main.o utils.o

main.o: main.c
    $(CC) $(CFLAGS) -c main.c

utils.o: utils.c
    $(CC) $(CFLAGS) -c utils.c

clean:
    rm -f *.o program
```

#### 1.5 Lợi ích sử dụng Makefile
- Tự động hóa quá trình build
- Chỉ biên dịch lại các file đã thay đổi
- Quản lý dependencies hiệu quả
- Tiết kiệm thời gian phát triển
- Dễ dàng chia sẻ và maintain code


### II. 🔄 Quá trình biên dịch một chương trình C
- Các bước tiền xử lý (Preprocessing)
- Biên dịch (Compilation)
- Assembling
- Linking
- Demo với ví dụ cụ thể

### III. 📚 Static Lib và Shared Lib
- Khái niệm và sự khác biệt
- Cách tạo Static Library (.a)
- Cách tạo Shared Library (.so)
- Ví dụ thực hành
- So sánh ưu nhược điểm

## 🛠 Công cụ cần chuẩn bị
- GCC Compiler
- Make utility
- Text editor (VSCode, Vim, etc.)
- Git

## 📖 Tài liệu tham khảo
- GNU Make Manual
- GCC Documentation
- Linux Programming Interface

## 🤝 Đóng góp
Mọi đóng góp đều được hoan nghênh! Hãy tạo Issue hoặc Pull Request để bổ sung nội dung hoặc sửa lỗi.

## 📝 License
MIT

---
> "In Linux, everything is a file" 🐧

