<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ユーザ一覧</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/original.css" rel="stylesheet">


  </head>
  <body>

    <!-- header -->
    <header>
      <nav class="navbar navbar-inverse">
      	<div class="container">
      		<div class="navbar-header">
            <a class="navbar-brand" href=>ユーザ管理システム</a>
      		</div>
				<form  action="/UserManagement/loginServlet" method="get">

          <ul class="nav navbar-nav navbar-right">
          	<li class="navbar-text">${login.name}さん </li>

          		<li class="dropdown">

          				<a  class="navbar-link logout-link" href=>ログアウト</a>

          		</li>
          </ul>
          </form>
      	</div>
      </nav>
    </header>
    <!-- /header -->

    <!-- body -->
    <div class="container">

      <div class="text-right">
        <a href="userCreate.html">新規登録</a>
      </div>


      <div class="panel-body">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">検索条件</div>
            </div>
            <div class="panel-body">
              <form method="post" action="#" class="form-horizontal">
                <div class="form-group">
                  <label for="code" class="control-label col-sm-2">ログインID</label>
                  <div class="col-sm-4">
                    <input type="text" name="login-id" id="login-id" class="form-control"/>
                  </div>
                </div>
                <div class="form-group">
                  <label for="name" class="control-label col-sm-2">ユーザ名</label>
                  <div class="col-sm-4">
                    <input type="text" name="user-name" id="user-name" class="form-control"/>
                  </div>
                </div>
                <div class="form-group">
                  <label for="continent" class="control-label col-sm-2">生年月日</label>
                  <div class="row">
                    <div class="col-sm-3">
                      <input type="date" name="date-start" id="date-start" class="form-control" size="30"/>
                    </div>
                    <div class="col-xs-1 text-center">
                     ～
                    </div>
                    <div class="col-sm-3">
                      <input type="date" name="date-end" id="date-end" class="form-control"/>
                    </div>
                </div>
                </div>
                <div class="text-center">
                  <button type="submit" value="検索" class="btn btn-primary form-submit">Search</button>
                </div>
              </form>
            </div>
        </div>

        <div class="table-responsive">
             <table class="table table-striped table-bordered">
               <thead>
                 <tr>
                   <th>ログインID</th>
                   <th>ユーザ名</th>
                   <th>生年月日</th>
                   <th></th>
                 </tr>
               </thead>
               <tbody>
                 <tr>
                   <td>id0001</td>
                   <td>田中一郎</td>
                   <td>1999年03月20日</td>
                   <td>
                     <a class="btn btn-primary" href="userDetail.html">詳細</a>
                     <a class="btn btn-success" href="userUpdate.html">更新</a>
                     <a class="btn btn-danger" href ="userDelete.html">削除</a>
                   </td>
                 </tr>
                 <tr>
                   <td>id0002</td>
                   <td>佐藤二郎</td>
                   <td>1980年12月02日</td>
                   <td>
                     <a class="btn btn-primary" href="userDetail.html">詳細</a>
                     <a class="btn btn-success" href="userUpdate.html">更新</a>
                     <a class="btn btn-danger" href ="userDelete.html">削除</a>
                   </td>
                 </tr>
                 <tr>
                   <td>id0003</td>
                   <td>山本三郎</td>
                   <td>1971年08月09日</td>
                   <td>
                     <a class="btn btn-primary" href="userDetail.html">詳細</a>
                     <a class="btn btn-success" href="userUpdate.html">更新</a>
                     <a class="btn btn-danger" href ="userDelete.html">削除</a>
                   </td>
                 </tr>
               </tbody>
             </table>
           </div>
         </div>
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
