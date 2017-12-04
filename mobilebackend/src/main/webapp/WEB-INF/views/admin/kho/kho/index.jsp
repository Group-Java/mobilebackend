<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/WEB-INF/views/admin/head.jsp"></jsp:include>
</head>
<body class="nav-md">
	<div class="container body">
      <div class="main_container">
      
        <jsp:include page="/WEB-INF/views/admin/menu.jsp"></jsp:include>
      
      	<jsp:include page="/WEB-INF/views/admin/navigation.jsp"></jsp:include>
      	
      	<!-- page content -->
      	<div class="right_col" role="main">
      		
      		<div class="">
      			<jsp:include page="/WEB-INF/views/admin/page_title.jsp"></jsp:include>
      		</div>
      	
      		<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Quản lý kho<small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      <button class="btn btn-success">Nhập kho</button>
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Mã</th>
                          <th>Tên sản phẩm</th>
                          <th>Màu sắc</th>
                          <th>Bộ nhớ trong</th>
                          <th>Số lượng</th>
                          <th>Giá</th>
                          <th>Công cụ</th>
                        </tr>
                      </thead>


                      <tbody>
                        <tr>
                          <td>Tiger Nixon</td>
                          <td>System Architect</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td>Edinburgh</td>
                          <td>61</td>
                          <td><a href="#"><i class="fa fa-edit text-center">  Sửa  </i></a>   <a href="#"><i class="fa fa-trash fa-hover">  Xóa  </i></a></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
			
      	</div>
      	
      	
      	<jsp:include page="/WEB-INF/views/admin/footer.jsp"></jsp:include>
      </div>
     </div>

	<jsp:include page="/WEB-INF/views/admin/js.jsp"></jsp:include>
</body>
</html>