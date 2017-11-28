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
      	
      	
      	
      		<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Design <small>different form elements</small></h2>
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
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="wlan">Wlan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="wlan" name="wlan" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="bluetooth">Bluetooth <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="bluetooth" name="bluetooth" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="gps" class="control-label col-md-3 col-sm-3 col-xs-12">GPS <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="gps" class="form-control col-md-7 col-xs-12" type="text" name="gps">
                        </div>
                      </div>

    
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                       	  <button type="submit" class="btn btn-success mr-1">Submit</button>
                       	  <button class="btn btn-primary" type="reset">Reset</button>
                          <button class="btn btn-warning" type="button">Cancel</button>
                        </div>
                      </div>

                    </form>
                  </div>
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