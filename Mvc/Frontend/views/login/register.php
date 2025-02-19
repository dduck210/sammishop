<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-3" style="margin: 10px auto">
            <form action="" method="POST" id="register_frontend">
                <div class="login__title">ĐĂNG KÝ THÀNH VIÊN</div>
                <div class="form__login">
                  <input type="text" name="phone" class="login__form" id="phone" placeholder="Nhập số điện thoại đăng ký ... *"
                           value="<?php echo isset($_POST["phone"]) ? $_POST["phone"] : "" ?>" >
                    <p class="error"><?php echo isset($this->error['phone']) ? $this->error['phone'] : '' ?></p>

                  <input type="text"  name="email" class="login__form" id="email" placeholder="Nhập email... *"
                           value="<?php echo isset($_POST["email"]) ? $_POST["email"] : "" ?>">
                    <p class="error"><?php echo isset($this->error['email']) ? $this->error['email'] : '' ?></p>

                  <input type="text" name="fullname" class="login__form" id="fullname" placeholder="Nhập họ tên ... * "
                           value="<?php echo isset($_POST["fullname"]) ? $_POST["fullname"] : "" ?>">
                    <p class="error"><?php echo isset($this->error['fullname']) ? $this->error['fullname'] : '' ?></p>

                  <input type="text" name="address" class="login__form" id="address" placeholder="Nhập địa chỉ... *"
                           value="<?php echo  isset($_POST["address"]) ? $_POST["address"] : "" ?>">
                    <p class="error"><?php echo isset($this->error['address']) ? $this->error['address'] : '' ?></p>

                  <input type="password" name="password" class="login__form" id="password" placeholder="Nhập mật khẩu... *">
                    <p class="error"><?php echo isset($this->error['password']) ? $this->error['password'] : '' ?></p>
                  <input type="hidden" value="0" name="status">
                </div>
                <div class="col"></div>
                <div class="form-group mt-20 mp-15" >
                    <input type="submit" value="Đăng ký tài khoản" name="submit" class="login__form button_submit"
                </div>
            </form>
            <p class="login__bottom">Bạn đã có tài khoản,<a style="color: #dc1c4c;font-weight: bold" href="dang-nhap">đăng nhập</a> ngay</p>
        </div>
    </div>
</div>
</div>