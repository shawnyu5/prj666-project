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

<style lang="less" scoped src="./login.css"></style>
