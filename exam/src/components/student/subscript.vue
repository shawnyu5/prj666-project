<template>
   <div id="myExam">
      <div class="title">Public Questionnare</div>
      <div class="wrapper">
         <ul class="top">
            <li class="order">Questionnare List</li>
            <li class="search-li">
               <div class="icon">
                  <input
                     type="text"
                     placeholder="试卷名称"
                     class="search"
                     v-model="key"
                  /><i class="el-icon-search"></i>
               </div>
            </li>
            <li>
               <el-button type="primary" @click="search()"
                  >Seach Exam</el-button
               >
            </li>
         </ul>
         <ul class="paper">
            <li class="item">
               <h4 @click="">PRJ666Test</h4>
               <p class="name">Seneca-Final</p>
               <div class="info">
                  <i></i><span>2022-11-11</span>
                  <i class="iconfont icon-icon-time"></i
                  ><span>Limit 120 mins</span>
                  <i class="iconfont icon-fenshu"></i
                  ><span>Total 100 socres</span>
               </div>
            </li>
         </ul>
         <div class="pagination">
            <el-pagination> </el-pagination>
         </div>
      </div>
   </div>
</template>
<script>
export default {
   methods: {
      search() {
         ///api/exams
         let tokenStr = this.$session.get("jwt");
         const headers = {
            Authorization: "Bearer " + tokenStr,
         };
         this.$axios("http://localhost:8080/exams", { headers }).then((res) => {
            if (res.data.code == 200) {
               let allExam = res.data.data;
               let newPage = allExam.filter((item) => {
                  return item.source.includes(this.key);
               });
               this.pagination.records = newPage;
            }
         });
      },
   },
};
</script>

<style lang="less" scoped>
.pagination {
   padding: 20px 0px 30px 0px;
   .el-pagination {
      display: flex;
      justify-content: center;
   }
}
.paper {
   h4 {
      cursor: pointer;
   }
}
.paper .item a {
   color: #000;
}
.wrapper .top .order {
   cursor: pointer;
}
.wrapper .top .order:hover {
   color: #0195ff;
   border-bottom: 2px solid #0195ff;
}
.wrapper .top .order:visited {
   color: #0195ff;
   border-bottom: 2px solid #0195ff;
}
.item .info i {
   margin-right: 5px;
   color: #0195ff;
}
.item .info span {
   margin-right: 14px;
}
.paper .item {
   width: 380px;
   border-radius: 4px;
   padding: 20px 30px;
   border: 1px solid #eee;
   box-shadow: 0 0 4px 2px rgba(217, 222, 234, 0.3);
   transition: all 0.6s ease;
}
.paper .item:hover {
   box-shadow: 0 0 4px 2px rgba(140, 193, 248, 0.45);
   transform: scale(1.03);
}
.paper .item .info {
   font-size: 14px;
   color: #88949b;
}
.paper .item .name {
   font-size: 14px;
   color: #88949b;
}
.paper * {
   margin: 20px 0;
}
.wrapper .paper {
   display: flex;
   justify-content: space-around;
   flex-wrap: wrap;
}
.top .el-icon-search {
   position: absolute;
   right: 10px;
   top: 10px;
}
.top .icon {
   position: relative;
}
.wrapper .top {
   border-bottom: 1px solid #eee;
   margin-bottom: 20px;
}
#myExam .search-li {
   margin-left: auto;
}
.top .search-li {
   margin-left: auto;
}
.top li {
   display: flex;
   align-items: center;
}
.top .search {
   margin-left: auto;
   padding: 10px;
   border-radius: 4px;
   border: 1px solid #eee;
   box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
   transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}
.top .search:hover {
   color: #0195ff;
   border-color: #0195ff;
}
.wrapper .top {
   display: flex;
}
.wrapper .top li {
   margin: 20px;
}
#myExam {
   width: 980px;
   margin: 0 auto;
}
#myExam .title {
   margin: 20px;
}
#myExam .wrapper {
   background-color: #fff;
}
</style>
