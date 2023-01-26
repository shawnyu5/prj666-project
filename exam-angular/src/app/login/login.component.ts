import { Component, OnInit } from "@angular/core";
import { FormControl } from "@angular/forms";

@Component({
   selector: "app-login",
   templateUrl: "./login.component.html",
   styleUrls: ["./login.component.scss"],
})
export class LoginComponent implements OnInit {
   email = "";
   password = "";
   // email = new FormControl();
   // password = new FormControl();
   constructor() {}

   ngOnInit(): void {
      console.log("Login -------");
   }
   login() {
      console.log("Login -------");

      // this.$axios({
      // url: "http://localhost:8080/authenticatet",
      // method: "post",
      // data: {
      // ...this.formLabelAlign,
      // },
      // }).then((res) => {
      // //let resData = res.data.data
      // let resData = res.data.token;
      // console.log(JSON.stringify(res));
      // console.log(resData);
      // if (resData != null) {
      // this.$session.start();
      // this.$session.set("jwt", resData);
      // console.log(JSON.stringify(resData));
      // //  debugger
      // //   let instance = this.$axios.create();
      // //   instance.defaults.headers.common['Authorization'] =  `Bearer ${this.$session.get('jwt')}`;
      // //  this.$axios.defaults.headers.common['Authorization'] = `Bearer ${this.$session.get('jwt')}`;
      // console.log("this is session token " + this.$session.get("jwt"));
      // console.log("User name" + res.data.username);
      // switch (this.formLabelAlign.type) {
      // case "Subscriber":
      // [>   this.$cookies.set("cname", resData.studentName)
      // this.$cookies.set("cid", resData.studentId) */
      // this.$cookies.set("cname", this.formLabelAlign.username);
      // this.$cookies.set("cid", this.formLabelAlign.username);
      // this.$router.push({ path: "/student" });
      // break;
      // case "Admin": //管理员
      // this.$cookies.set("cname", this.formLabelAlign.username);
      // this.$cookies.set("cid", this.formLabelAlign.username);
      // this.$cookies.set("role", 0);
      // this.$router.push({ path: "/index" }); //跳转到首页
      // break;
      // case "Publisher": //教师
      // this.$cookies.set("cname", this.formLabelAlign.username);
      // this.$cookies.set("cid", this.formLabelAlign.username);
      // this.$cookies.set("role", 1);
      // this.$router.push({ path: "/index" }); //跳转到教师用户
      // break;
      // }

      // [>    switch(resData.role) {
      // case "0":  //管理员
      // this.$cookies.set("cname", resData.adminName)
      // this.$cookies.set("cid", resData.adminId)
      // this.$cookies.set("role", 0)
      // this.$router.push({path: '/index' }) //跳转到首页
      // break
      // case "1": //教师
      // this.$cookies.set("cname", resData.teacherName)
      // this.$cookies.set("cid", resData.teacherId)
      // this.$cookies.set("role", 1)
      // this.$router.push({path: '/index' }) //跳转到教师用户
      // break
      // case "2": //学生
      // this.$cookies.set("cname", resData.studentName)
      // this.$cookies.set("cid", resData.studentId)
      // this.$router.push({path: '/student'})
      // break
      // } */
      // }
      // if (resData == null) {
      // //错误提示
      // this.$message({
      // showClose: true,
      // type: "error",
      // message: "Account number or password wrong",
      // });
      // }
      // });
   }
}
