<template>
<div>
	<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20221119/42a749ea93b14beeaacd28a90106aa3d.jpg) no-repeat","display":"flex","width":"100%","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
		<el-form ref="loginForm" :model="loginForm" :style='{"padding":"40px 40px 40px 40px","boxShadow":"0px 0px 0px #ccc,inset 0px 0px 0px 0px #e0f8e8","margin":"20px 0 0 40%","borderColor":"#1170d2 #08b344 #08b344 #1170d2","borderRadius":"10% 10%","background":"rgba(255,255,255,.8)","borderWidth":"4px","width":"40%","borderStyle":"solid double solid double","height":"auto"}' :rules="rules">
			<div v-if="true" :style='{"width":"100%","margin":"0 0 10px 0","fontSize":"24px","color":"#08b344","textAlign":"center","fontWeight":"bold"}'>USER / LOGIN</div>
			<div v-if="true" :style='{"width":"100%","margin":"0 0 30px 0","fontSize":"24px","color":"#08b344","textAlign":"center","fontWeight":"bold"}'>智慧党建系统设计与实现登录</div>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"80%","margin":"0 auto 24px"}' prop="username">
				<div v-if="false" :style='{"width":"64px","lineHeight":"40px","fontSize":"14px","color":"#ffa100"}'>账号：</div>
				<input :style='{"border":"0px solid #eacb96","padding":"0 10px","boxShadow":"0px 2px 0px #08b344","color":"#999","borderRadius":"0px","background":"#fff","width":"100%","fontSize":"14px","height":"44px"}' v-model="loginForm.username" placeholder="请输入账户">
			</el-form-item>
			<el-form-item v-if="loginType==1" class="list-item" :style='{"width":"80%","margin":"0 auto 24px"}' prop="password">
				<div v-if="false" :style='{"width":"64px","lineHeight":"40px","fontSize":"14px","color":"#ffa100"}'>密码：</div>
				<input :style='{"border":"0px solid #eacb96","padding":"0 10px","boxShadow":"0px 2px 0px #08b344","color":"#999","borderRadius":"0px","background":"#fff","width":"100%","fontSize":"14px","height":"44px"}' v-model="loginForm.password" placeholder="请输入密码" type="password">
			</el-form-item>
			<el-form-item v-if="roles.length>1" class="list-type" :style='{"width":"80%","margin":"20px auto"}' prop="role">
				<el-radio v-model="loginForm.tableName" :label="item.tableName" v-for="(item, index) in roles" :key="index" @change.native="getCurrentRow(item)">{{item.roleName}}</el-radio>
			</el-form-item>
			<el-form-item :style='{"width":"80%","margin":"20px auto"}'>
				<el-button v-if="loginType==1" :style='{"border":"0","cursor":"pointer","padding":"0px","boxShadow":"1px 2px 3px #aaa","margin":"0 5px","outline":"none","color":"#fff","borderRadius":"4px","background":"linear-gradient(180deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","width":"128px","fontSize":"14px","height":"40px"}' @click="submitForm('loginForm')">登录</el-button>
				<el-button v-if="loginType==1" :style='{"border":"1px solid #bbb","cursor":"pointer","padding":"0px","boxShadow":"1px 2px 3px #ccc","margin":"0 5px","outline":"none","color":"#999","borderRadius":"4px","background":"#fff","width":"128px","fontSize":"14px","height":"40px"}' @click="resetForm('loginForm')">重置</el-button>
                <el-upload v-if="loginType==2" :action="baseUrl + 'file/upload'" :show-file-list="false" :on-success="faceLogin">
                    <el-button :style='{"border":"0","cursor":"pointer","padding":"0px","boxShadow":"1px 2px 3px #aaa","margin":"0 5px","outline":"none","color":"#fff","borderRadius":"4px","background":"linear-gradient(180deg, rgba(17,112,210,1) 0%, rgba(8,179,68,1) 100%)","width":"128px","fontSize":"14px","height":"40px"}'>人脸识别登录</el-button>
                </el-upload>
			</el-form-item>
			<div :style='{"width":"80%","margin":"20px auto"}'>
			<router-link :style='{"cursor":"pointer","margin":"0 5px","fontSize":"14px","textDecoration":"none","color":"#08b344"}' :to="{path: '/register', query: {role: item.tableName,pageFlag:'register'}}" v-if="item.hasFrontRegister=='是'" v-for="(item, index) in roles" :key="index">注册{{item.roleName.replace('注册','')}}</router-link>
			</div>
		</el-form>
    </div>
</div>
</template>

<script>

export default {
	//数据集合
	data() {
		return {
            baseUrl: this.$config.baseUrl,
            loginType: 1,
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除","年龄分析","学历统计"],"menu":"党员","menuJump":"列表","tableName":"dangyuan"}],"menu":"党员管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"党支部","menuJump":"列表","tableName":"dangzhibu"}],"menu":"党支部管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"党建要闻","menuJump":"列表","tableName":"dangjianyaowen"}],"menu":"党建要闻管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"党建地图","menuJump":"列表","tableName":"dangjianditu"}],"menu":"党建地图管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除","查看评论"],"menu":"党建学习","menuJump":"列表","tableName":"dangjianxuexi"}],"menu":"党建学习管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","修改","删除"],"menu":"学习心得","menuJump":"列表","tableName":"xuexixinde"}],"menu":"学习心得管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除"],"menu":"党费缴纳","menuJump":"列表","tableName":"dangfeijiaona"}],"menu":"党费缴纳管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除"],"menu":"党建活动","menuJump":"列表","tableName":"dangjianhuodong"}],"menu":"党建活动管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","修改","删除"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"问卷调查","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","修改","删除","问卷回答统计"],"menu":"问卷回答","menuJump":"列表","tableName":"wenjuanhuida"}],"menu":"问卷回答管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除"],"menu":"民主投票","menuJump":"列表","tableName":"minzhutoupiao"}],"menu":"民主投票管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","修改","删除"],"menu":"投票信息","menuJump":"列表","tableName":"toupiaoxinxi"}],"menu":"投票信息管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"学习测试管理","tableName":"exampaper"}],"menu":"学习测试管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-baby","buttons":["新增","查看","修改","删除"],"menu":"学习测试列表","tableName":"exampaperlist"},{"appFrontIcon":"cuIcon-skin","buttons":["查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"appFrontIcon":"cuIcon-explore","buttons":["查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"党建要闻列表","menuJump":"列表","tableName":"dangjianyaowen"}],"menu":"党建要闻模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"党建地图列表","menuJump":"列表","tableName":"dangjianditu"}],"menu":"党建地图模块"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","学习"],"menu":"党建学习列表","menuJump":"列表","tableName":"dangjianxuexi"}],"menu":"党建学习模块"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","报名"],"menu":"党建活动列表","menuJump":"列表","tableName":"dangjianhuodong"}],"menu":"党建活动模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","问卷回答"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","投票"],"menu":"民主投票列表","menuJump":"列表","tableName":"minzhutoupiao"}],"menu":"民主投票模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"学习心得","menuJump":"列表","tableName":"xuexixinde"}],"menu":"学习心得管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看","支付"],"menu":"党费缴纳","menuJump":"列表","tableName":"dangfeijiaona"}],"menu":"党费缴纳管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看"],"menu":"问卷回答","menuJump":"列表","tableName":"wenjuanhuida"}],"menu":"问卷回答管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看"],"menu":"投票信息","menuJump":"列表","tableName":"toupiaoxinxi"}],"menu":"投票信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"党建要闻列表","menuJump":"列表","tableName":"dangjianyaowen"}],"menu":"党建要闻模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"党建地图列表","menuJump":"列表","tableName":"dangjianditu"}],"menu":"党建地图模块"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","学习"],"menu":"党建学习列表","menuJump":"列表","tableName":"dangjianxuexi"}],"menu":"党建学习模块"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","报名"],"menu":"党建活动列表","menuJump":"列表","tableName":"dangjianhuodong"}],"menu":"党建活动模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","问卷回答"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","投票"],"menu":"民主投票列表","menuJump":"列表","tableName":"minzhutoupiao"}],"menu":"民主投票模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"党员","tableName":"dangyuan"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除","党费缴纳"],"menu":"党员","menuJump":"列表","tableName":"dangyuan"}],"menu":"党员管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["查看"],"menu":"党费缴纳","menuJump":"列表","tableName":"dangfeijiaona"}],"menu":"党费缴纳管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"党建活动","menuJump":"列表","tableName":"dangjianhuodong"}],"menu":"党建活动管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","审核"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"党建要闻列表","menuJump":"列表","tableName":"dangjianyaowen"}],"menu":"党建要闻模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"党建地图列表","menuJump":"列表","tableName":"dangjianditu"}],"menu":"党建地图模块"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","学习"],"menu":"党建学习列表","menuJump":"列表","tableName":"dangjianxuexi"}],"menu":"党建学习模块"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","报名"],"menu":"党建活动列表","menuJump":"列表","tableName":"dangjianhuodong"}],"menu":"党建活动模块"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","问卷回答"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","投票"],"menu":"民主投票列表","menuJump":"列表","tableName":"minzhutoupiao"}],"menu":"民主投票模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"党支部","tableName":"dangzhibu"}],
			loginForm: {
				username: '',
				password: '',
				tableName: '',
				code: '',
			},
			role: '',
            roles: [],
			rules: {
				username: [
					{ required: true, message: '请输入账户', trigger: 'blur' }
				],
				password: [
					{ required: true, message: '请输入密码', trigger: 'blur' }
				]
			},
			codes: [{
				num: 1,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 2,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 3,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}, {
				num: 4,
				color: '#000',
				rotate: '10deg',
				size: '16px'
			}]
		}
	},
	created() {
        for(let item in this.roleMenus) {
            if(this.roleMenus[item].hasFrontLogin=='是') {
                this.roles.push(this.roleMenus[item]);
            }
        }
	},
	mounted() {
	},
    //方法集合
    methods: {
		randomString() {
			var len = 4;
			var chars = [
			  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			  'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
			  'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
			  'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			  'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2',
			  '3', '4', '5', '6', '7', '8', '9'
			]
			var colors = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
			var sizes = ['14', '15', '16', '17', '18']
			
			var output = []
			for (var i = 0; i < len; i++) {
			  // 随机验证码
			  var key = Math.floor(Math.random() * chars.length)
			  this.codes[i].num = chars[key]
			  // 随机验证码颜色
			  var code = '#'
			  for (var j = 0; j < 6; j++) {
			    var key = Math.floor(Math.random() * colors.length)
			    code += colors[key]
			  }
			  this.codes[i].color = code
			  // 随机验证码方向
			  var rotate = Math.floor(Math.random() * 45)
			  var plus = Math.floor(Math.random() * 2)
			  if (plus == 1) rotate = '-' + rotate
			  this.codes[i].rotate = 'rotate(' + rotate + 'deg)'
			  // 随机验证码字体大小
			  var size = Math.floor(Math.random() * sizes.length)
			  this.codes[i].size = sizes[size] + 'px'
			}
		},
      getCurrentRow(row) {
        this.role = row.roleName;
      },
      submitForm(formName) {
        if (this.roles.length!=1) {
            if (!this.role) {
                this.$message.error("请选择登录用户类型");
                return false;
            }
        } else {
            this.role = this.roles[0].roleName;
            this.loginForm.tableName = this.roles[0].tableName;
        }
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$http.get(`${this.loginForm.tableName}/login`, {params: this.loginForm}).then(res => {
              if (res.data.code === 0) {
                localStorage.setItem('Token', res.data.token);
                localStorage.setItem('UserTableName', this.loginForm.tableName);
                localStorage.setItem('username', this.loginForm.username);
                localStorage.setItem('adminName', this.loginForm.username);
                localStorage.setItem('sessionTable', this.loginForm.tableName);
                localStorage.setItem('role', this.role);
                localStorage.setItem('keyPath', this.$config.indexNav.length+2);
                this.$router.push('/index/center');
                this.$message({
                  message: '登录成功',
                  type: 'success',
                  duration: 1500,
                });
              } else {
                this.$message.error(res.data.msg);
              }
            });
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://codegen.caihongy.cn/20221119/42a749ea93b14beeaacd28a90106aa3d.jpg) no-repeat;
		
		.el-form-item {
		  & /deep/ .el-form-item__content {
		    width: 100%;
		  }
		}
		
		.list-item /deep/ .el-input .el-input__inner {
			border: 0px solid #eacb96;
			border-radius: 0px;
			padding: 0 10px;
			box-shadow: 0px 2px 0px #08b344;
			color: #999;
			background: #fff;
			width: 100%;
			font-size: 14px;
			height: 44px;
		}
		
		.list-code /deep/ .el-input .el-input__inner {
			border: 0px solid #eacb96;
			border-radius: 0px;
			padding: 0 10px;
			box-shadow: 0px 2px 0px #08b344;
			outline: none;
			color: #999;
			background: none;
			display: inline-block;
			vertical-align: middle;
			width: calc(100% - 160px);
			font-size: 14px;
			height: 44px;
		}
		
		.list-type /deep/ .el-radio__input .el-radio__inner {
			background: rgba(53, 53, 53, 0);
			border-color: #666666;
		}
		.list-type /deep/ .el-radio__input.is-checked .el-radio__inner {
			background: #08b344;
			border-color: #0ca140;
		}
		.list-type /deep/ .el-radio__label {
			color: #666666;
			font-size: 14px;
		}
		.list-type /deep/ .el-radio__input.is-checked+.el-radio__label {
			color: #ffa100;
			font-size: 14px;
		}
	}
</style>
