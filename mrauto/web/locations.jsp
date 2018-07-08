<!DOCTYPE html>
<html lang="en">
<%@include file="includes/head.jsp" %>
<body>
<div class="bg">
      <%@include file="includes/header.jsp" %>

  <section id="content">
    <div class="sub-page">
      <div class="sub-page-left box-9">
        <h2>Contact Form</h2>
        <form id="form" method="post" action="#">
          <fieldset>
            <label>
              <input type="text" value="Name" onBlur="if(this.value=='') this.value='Name'" onFocus="if(this.value =='Name' ) this.value=''">
            </label>
            <label>
              <input type="text" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''">
            </label>
            <label>
              <input type="text" value="Phone" onBlur="if(this.value=='') this.value='Phone'" onFocus="if(this.value =='Phone' ) this.value=''">
            </label>
            <label>
              <textarea onBlur="if(this.value==''){this.value='MESSAGE'}" onFocus="if(this.value=='MESSAGE'){this.value=''}">MESSAGE</textarea>
            </label>
            <div class="btns"><a href="#" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>
          </fieldset>
        </form>
      </div>
      <div class="sub-page-right">
        <h2>Find Us</h2>
        <div class="map">
          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
        </div>
        <dl class="adr">
          <dt>8901 Marmora Road, <br>
            Glasgow, D04 89GR.</dt>
          <dd><span>Telephone:</span>+1 800 603 6035</dd>
          <dd><span>E-mail:</span><a href="#" class="link">mail@demolink.org</a></dd>
        </dl>
      </div>
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
</div>
</body>
</html>