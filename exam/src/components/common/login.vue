<template>
   <div id="login">
      <div class="bg"></div>
      <el-row class="main-container">
         <el-col :lg="8" :xs="16" :md="10" :span="10">
            <div class="top">
               <i class="iconfont icon-kaoshi"></i
               ><span class="title">Online Exam</span>
            </div>
            <div class="bottom">
               <div class="container">
                  <p class="title">Account login</p>
                  <el-form
                     :label-position="labelPosition"
                     label-width="80px"
                     :model="formLabelAlign"
                  >
                     <el-form-item label="Account">
                        <el-input
                           v-model.number="formLabelAlign.username"
                           placeholder="Please enter your password"
                        ></el-input>
                     </el-form-item>
                     <el-form-item label="Password">
                        <el-input
                           v-model="formLabelAlign.password"
                           placeholder="Please enter your password"
                           type="password"
                        ></el-input>
                     </el-form-item>

                     <el-form-item label="Type">
                        <el-radio-group v-model="formLabelAlign.type">
                           <el-radio
                              v-model="formLabelAlign.subcriber"
                              label="Subscriber"
                           />
                           <el-radio
                              v-model="formLabelAlign.publisher"
                              label="Publisher"
                           />
                           <el-radio
                              v-model="formLabelAlign.admin"
                              label="Admin"
                           />
                        </el-radio-group>
                     </el-form-item>

                     <div class="submit">
                        <el-button
                           type="primary"
                           class="row-login"
                           @click="login()"
                           >Login</el-button
                        >
                     </div>
                     <!-- <div class="options">
                <p class="find"><a href="javascript:;">找回密码</a></p>
                <div class="register">
                  <span>没有账号?</span>
                  <span><a href="javascript:;">去注册</a></span>
                </div>
              </div> -->
                  </el-form>
               </div>
            </div>
         </el-col>
      </el-row>
      <section class="remind">
         <span>Account number: yzhou116@gmail.com</span>
         <span>All password: Sd!4888202</span>
      </section>
   </div>
</template>

<script src="./login.js"></script>

<style lang="less" scoped>
.remind {
   border-radius: 4px;
   padding: 10px 20px;
   display: flex;
   position: fixed;
   right: 20px;
   bottom: 50%;
   flex-direction: column;
   color: #606266;
   background-color: #fff;
   border-left: 4px solid #409eff;
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.container {
   margin-bottom: 32px;
}
.container .el-radio-group {
   margin: 30px 0px;
}
a:link {
   color: #ff962a;
   text-decoration: none;
}
#login {
   font-size: 14px;
   color: #000;
   background-color: #fff;
}
#login .bg {
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   overflow-y: auto;
   height: 100%;
   background: url("../../assets/img/loginbg.png") center top / cover no-repeat;
   background-color: #b6bccdd1 !important;
}
#login .main-container {
   display: flex;
   justify-content: center;
   align-items: center;
}
#login .main-container .top {
   margin-top: 100px;
   font-size: 30px;
   color: #ff962a;
   display: flex;
   justify-content: center;
}
#login .top .icon-kaoshi {
   font-size: 80px;
}
#login .top .title {
   margin-top: 20px;
}
#login .bottom {
   display: flex;
   justify-content: center;
   background-color: #fff;
   border-radius: 5px;
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
#login .bottom .title {
   text-align: center;
   font-size: 30px;
}
.bottom .container .title {
   margin: 30px 0px;
}
.bottom .submit .row-login {
   width: 100%;
   background-color: #04468b;
   border-color: #04468b;
   margin: 20px 0px 10px 0px;
   padding: 15px 20px;
}
.bottom .submit {
   display: flex;
   justify-content: center;
}
.footer {
   margin-top: 50px;
   text-align: center;
}
.footer .msg1 {
   font-size: 18px;
   color: #fff;
   margin-bottom: 15px;
}
.footer .msg2 {
   font-size: 14px;
   color: #e3e3e3;
   margin-top: 70px;
}
.bottom .options {
   margin-bottom: 40px;
   color: #ff962a;
   display: flex;
   justify-content: space-between;
}
.bottom .options > a {
   color: #ff962a;
}
.bottom .options .register span:nth-child(1) {
   color: #8c8c8c;
}
</style>
