//查询所有考试跳转到分段页面
<template>
   <div class="exam">
      <el-table :data="pagination.records" border>
         <el-table-column
            fixed="left"
            prop="source"
            label="Exam Name"
            width="180"
         ></el-table-column>
         <el-table-column
            prop="description"
            label="Introduction"
            width="200"
         ></el-table-column>
         <el-table-column
            prop="institute"
            label="College"
            width="120"
         ></el-table-column>
         <el-table-column
            prop="major"
            label="Course"
            width="200"
         ></el-table-column>
         <el-table-column
            prop="grade"
            label="Year"
            width="100"
         ></el-table-column>
         <el-table-column
            prop="examDate"
            label="Exam Date"
            width="120"
         ></el-table-column>
         <el-table-column
            prop="totalTime"
            label="Time"
            width="120"
         ></el-table-column>
         <el-table-column
            prop="totalScore"
            label="Total Score"
            width="120"
         ></el-table-column>
         <el-table-column
            prop="type"
            label="Exam Type"
            width="120"
         ></el-table-column>
         <el-table-column
            prop="tips"
            label="Student hint"
            width="400"
         ></el-table-column>
         <el-table-column fixed="right" label="Edit" width="150">
            <template slot-scope="scope">
               <el-button
                  @click="toPart(scope.row.examCode, scope.row.source)"
                  type="primary"
                  size="small"
                  >See the Scores</el-button
               >
            </template>
         </el-table-column>
      </el-table>
      <el-pagination
         @size-change="handleSizeChange"
         @current-change="handleCurrentChange"
         :current-page="pagination.current"
         :page-sizes="[4, 8, 10, 20]"
         :page-size="pagination.size"
         layout="total, sizes, prev, pager, next, jumper"
         :total="pagination.total"
         class="page"
      >
      </el-pagination>
   </div>
</template>

<script>
export default {
   data() {
      return {
         form: {}, //保存点击以后当前试卷的信息
         pagination: {
            //分页后的考试信息
            current: 1, //当前页
            total: null, //记录条数
            size: 4, //每页条数
         },
         dialogVisible: false,
      };
   },
   created() {
      this.getExamInfo();
   },
   methods: {
      getExamInfo() {
         //分页查询所有试卷信息
         ///api/exams/${this.pagination.current}/${this.pagination.size}
         let tokenStr = this.$session.get("jwt");
         const headers = {
            Authorization: "Bearer " + tokenStr,
         };

         console.log("select exam token-> " + tokenStr);
         var username = this.$cookies.get("cname");
         this.$axios(
            `http://localhost:8080/teacherexams/${this.pagination.current}/${this.pagination.size}/${username}`,
            { headers }
         )
            .then((res) => {
               this.pagination = res.data.data;
            })
            .catch((error) => {
               console.log(error);
            });
         /*    this.$axios(`http://localhost:8080/exams/${this.pagination.current}/${this.pagination.size}`,{headers}).then(res => {
        this.pagination = res.data.data
      }).catch(error => {
      }) */
      },
      //改变当前记录条数
      handleSizeChange(val) {
         this.pagination.size = val;
         this.getExamInfo();
      },
      //改变当前页码，重新发送请求
      handleCurrentChange(val) {
         this.pagination.current = val;
         this.getExamInfo();
      },
      toPart(examCode, source) {
         //跳转到分段charts页面
         this.$router.push({
            path: "/scorePart",
            query: { examCode: examCode, source: source },
         });
      },
   },
};
</script>
<style lang="less" scoped>
.exam {
   padding: 0px 40px;
   .page {
      margin-top: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
   }
   .edit {
      margin-left: 20px;
   }
}
</style>
