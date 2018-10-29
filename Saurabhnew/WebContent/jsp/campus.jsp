<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.separator-type, .title-type, .intro-type, .content-type .intro-type p {
    position: relative;
}
.intro-type .container {
    padding: 107px 0px 102px 0px !important;
}
#product-header-section, .intro-type .container {
    padding: 68px 15px 72px !important;
}
@media (min-width: 1630px)
.container {
    width: 1630px;
}
.parallax {
    background-attachment: inherit !important;
}
.parallax {
    background-attachment: inherit !important;
    background-repeat: repeat;
    background-size: cover;
    position: absolute;
    top: 0px;
    bottom: 0px;
    width: 100%;
    z-index: -10;
}
.company-heading h1 {
    margin-bottom: 40px;
    line-height: 80px;
    color: #fff;
    font-weight: 700 !important;
    text-align: center;
}
.seo-header, .product-header, .intro-type .container h1.white, .company-heading h1 {
    font-family: 'Raleway', sans-serif;
    font-weight: 100 !important;
    text-transform: capitalize;
    font-size: 65px;
    margin-bottom: 20px;
}
.company-sections h2, .careers-sections h2, .perks-section h2 {
    font-weight: 800;
    font-size: 50px;
}
.company-sections h2, .company-sections h3, .careers-sections h2, .perks-section h2 {
    font-family: 'proxima-nova', sans-serif;
}
.company-sections h3 {
    font-size: 25px;
    font-weight: 700;
    margin: 14px 0;
    font-family: 'proxima-nova', sans-serif;
    text-transform: capitalize;
}
.red-border {
    width: 50%;
    border-bottom: 1px solid #d2282e;
    margin: 0 auto;
    height: 16px;
}
.company-sections p {
    margin-top: 20px;
}
.ct-u-size22 {
    font-size: 22px;
}
.ct-u-fontWeight300 {
    font-weight: 300;
}
.marginTop40 {
    margin-top: 40px !important;
}
.ct-u-paddingBoth100 {
    padding: 100px 15px;
}
.culture-section {
    background: linear-gradient(rgba(0, 0, 0, 0.45),rgba(0, 0, 0, 0.45)), url(https://www.solodev.com/assets/culture.jpg) top no-repeat;
    /* background-color: #095c87; */
    /* color: #fff; */
}
.company-sections, .careers-sections, .left-headquarter-section-img, .right-headquarter-section-img {
    text-align: center;
}
.ct-u-paddingBoth100 {
    padding: 100px 15px;
}
.company-sections h2, .careers-sections h2, .perks-section h2 {
    font-weight: 800;
    font-size: 50px;
}
.company-sections h2, .company-sections h3, .careers-sections h2, .perks-section h2 {
    font-family: 'proxima-nova', sans-serif;
}
.slick-slider {
    margin-bottom: 0;
}
.slick-slider {
    position: relative;
    display: block;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}
.slick-slider .slick-track, .slick-slider .slick-list {
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0);
    -o-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
}
.slick-list {
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
.slick-track {
    position: relative;
    top: 0;
    left: 0;
    display: block;
}
.slider .item {
    overflow: hidden;
}
.slick-slide {
    display: none;
    float: left;
    height: 100%;
    min-height: 1px;
}
.logos {
    margin-right: -5px;
    margin-left: -5px;
}
ul.logos li {
    cursor: pointer;
}
.logos > li {
    float: left;
    width: 16.66666%;
    padding: 5px;
}
.logos .logos-inner {
    position: relative;
}
.slick-slide img {
    display: inline-block;
}
.logo-image {
    position: relative;
    width: 100%;
}
ul.logos li {
    cursor: pointer;
}
.logos > li {
    float: left;
    width: 16.66666%;
    padding: 5px;
}
.logos .logos-inner {
    position: relative;
}
.slick-slide img {
    display: inline-block;
}
img {
    display: inline-block;
    max-width: 100%;
    vertical-align: middle;
}
.fa {
  font-size: 42px;
}
.btn-solodev-red-reversed {
    background-color: #fff;
    color: #d2282e;
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    padding: 12px 35px;
}
.btn, .btn-blk {
    font-size: 18px !Important;
}
a:hover, a:focus {
    text-decoration: none;
}
.ct-u-size19 {
 margin-top: 40px; 
}
a:hover {
    color: #000;
}
section.clients-home .clients-logos .client-logos-repeater {
    height: 260px;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    cursor: pointer;
}

section.clients-home .clients-logos .client-logos-repeater img {
    position: absolute;
    top: 0;
    bottom: 0;
    margin: auto;
    left: 0;
    right: 0;
}
.logo-title {
    position: absolute;
    display: none;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    font-size: 16px;
    font-weight: 700;
    line-height: 16px;
    text-transform: uppercase;
    color: #FFF;
    background-color: #0079c2;
}
.ct-u-paddingBottom100 {
  margin-top: 40px;
}
.culture-section {
  background-size: cover;
  color: #fff;
}

</style>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="ct-pageWrapper" id="ct-js-wrapper">
<section class="company-heading intro-type" id="parallax-one">
   <div class="container">
      <div class="row product-title-info">
         <div class="col-md-12">
            <h1>
               Campus Life
            </h1>
         </div>
      </div>
   </div>
   <div class="parallax" id="parallax-cta" style="background-image:url(jsp/hero.jpg);">
      &nbsp;
   </div>
</section>
<section class="story-section company-sections ct-u-paddingBoth100 paddingBothHalf noTopMobilePadding" id="section">
   <div class="container text-center">
      <h2>
         About Our Campus
      </h2>
      
      <div class="col-md-8 col-md-offset-2">
         <div class="red-border">
            &nbsp;
         </div>
         <p class="ct-u-size22 ct-u-fontWeight300 marginTop40">
            To disseminate affordable quality technical education for producing globally competent,
			technically tempered and socially responsible technical manpower to meet global challenges. 
         </p>
         <!-- <a class="ct-u-marginTop60 btn btn-solodev-red btn-fullWidth-sm ct-u-size19" href="#">Learn More</a> -->
      </div>
   </div>
</section>
<section class="culture-section company-sections ct-u-paddingBoth100 paddingBothHalf noTopMobilePadding">
   <div class="container">
      <div class="col-md-8 col-md-offset-2">
         <h2>
            Campus Life In US
         </h2>
         
         <p class="ct-u-size22 ct-u-fontWeight300 ct-u-marginBottom60">
            The students enrolled with RGPV University get the world class infrastructure and 
			highly qualified Lecturers, Experienced Professors and Coordinators to make their 
			education a memorable time period.<br>The University departments and affiliated institutions 
			are well equipped with all the latest technological infrastructure and laboratories, 
			where a student can get the real time experience of the industry atmosphere and develop 
			the skill set to get the employment easily.The sport & cultural activities organized by the
			institutes and the students is the key to develop the feeling of social corporate
			responsibility among them. <br>The scholarship programs are designed to provide the financial 
			support for the merit holder students and the students from the below poverty class.
			The campus recruitment drives organized by the Training and Placement Officers across 
			the state is the event which provide the employment to the students well before they 
			complete their degree or diploma programs. <br>TCS, Infosys, Wipro, Satyam, HCL, Airforce etc. 
			are few of the major recruiters.The industrial exposure under the Industrial Training 
			Program of each course provide the access and chance to work within the Industry before 
			completing the courses which builds the confidence of students before entering to the 
			industry environment. 
         </p>
      </div>
   </div>
</section>

</body>
</html>