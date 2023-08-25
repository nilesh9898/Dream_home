<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dream Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
     
     <!-- style  -->
     <link rel="stylesheet" href="css/home.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
   <!-- carousel -->
      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/3d-rendering-modern-dining-room-living-room-with-luxury-decor.jpg" class="d-block w-100 img-fluid" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>First slide label</h5>
              <p>Some representative placeholder content for the first slide.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/empty-modern-room-with-furniture (1).jpg" class="d-block w-100 img-fluid" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Second slide label</h5>
              <p>Some representative placeholder content for the second slide.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/empty-modern-room-with-furniture.jpg" class="d-block w-100 img-fluid" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5>Third slide label</h5>
              <p>Some representative placeholder content for the third slide.</p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
          <span class="visually-hidden" >Next</span>
        </button>
      </div>

      <!-- container -->
      <div class="cantainer-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-11 " id="product header"> 
                <h2 id="header"> Product</h2>
            </div>
            <div class="row justify-content-center ">
                <div class="col-lg-3 product">
                    <a href="" class="product-group"><img src="images/different-electrical-tools-digital-tablet-wooden-background-flat-lay.jpg" class="img-fluid product-image">
                    <h3 class="product-name">Electrical</h3>
                    </a>
                </div>
                <div class="col-lg-3 product">  
                   <a href="" class="product-group"><img src="images/top-view-boards-mdf-material.jpg" class="img-fluid product-image">
                   <h3 class="product-name"> Furniture</h3>
                   </a>
                </div>
                <div class="col-lg-3 product">
                  <a href="" class="product-group"><img src="images/traditional-macrame-assortment-indoors.jpg" class="img-fluid product-image">
                   <h3 class="product-name"> Decor Accessories</h3>
                   </a>
                </div>
                <div class="col-lg-3 product">
                  <a href="" class="product-group"><img src="images/modern-office-building-facade.jpg" class="img-fluid product-image">
                   <h3 class="product-name">POP</h3>
                   </a>
                </div>
                <div class="col-lg-3 product">
                  <a href="" class="product-group"><img src="images/closeup-house-painting-renovation.jpg" class="img-fluid product-image">
                   <h3 class="product-name"> paint</h3>
                   </a>
                </div>
                <div class="col-lg-3 product">
                  <a href="" class="product-group"><img src="images/still-life-putting-up-decorative-vinyls.jpg" class="img-fluid product-image" >
                   <h3 class="product-name"> cvil</h3>
                   </a>
                </div>
            </div>
        </div>
        <hr style="size: 10px; color: black;">
        <!-- Design part -->
        <div class="row justify-content-center">
          <div class="col-lg-11" id="design-header">
             <h3 id="design-name">Design</h3>
          </div>
          <div class="row">
            <div class="col-lg-10"></div>
            <div id="carouselExample" class="carousel slide">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="images/3d-rendering-beautiful-luxury-bedroom-suite-hotel-with-tv-working-table.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>Bedroom Design</h2></a>
                </div>
                <div class="carousel-item">
                  <img src="images/modern-kitchen-interior-white-colors.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>Kitchen Design</h2></a>
                </div>
                <div class="carousel-item">
                  <img src="images/modern-living-room-style.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>living Design</h2></a>
                </div>
                <div class="carousel-item active">
                  <img src="images/3d-rendering-modern-design-marble-tile-toilet-bathroom.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>Bathroom Design</h2></a>
                </div>
                <div class="carousel-item">
                  <img src="images/3d-rendering-business-meeting-working-room-office-building.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>office Design</h2></a>

                </div>
                <div class="carousel-item">
                  <img src="images/modern-living-room-style.jpg" class="d-block w-100 img-fluid image-design" alt="...">
                  <a><h2>Modern Living  Design</h2></a>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
           </div>
          </div>
        </div>

        <hr>
        <!-- designer profile -->
        <div class="row justify-content-center">
          <div class="col-lg-11" id="designer-header" >
              <h3 id="Designer-part">Designer</h3>
          </div>
          <div class="row  row-cols-1 row-cols-md-3 g-4 profile-header">
            <div class="col">
              <div class="card h-100">
                <img src="images/woman-retoucher-looking-camera-smiling-sitting-creative-design-media-agency.jpg" class="card-img-top img-fluid image-profile" alt="...">
                <div class="card-body">
                  <h5 class="card-title">sonali varma</h5>
                  <p class="card-text">Experience: 7years</p>
                  <a href="">Read more</a>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="images/portrait-asian-female-woman-entrepreneur-smile-with-confident-cheerul-looking-camera-with-background-material-sample-chart-home-office-background.jpg" class="card-img-top img-fluid image-profile" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Raghika yadav</h5>
                  <p class="card-text">Experience: 10 years </p>
                  <a href="">Read more</a>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img src="images/pretty-manager.jpg" class="card-img-top img-fluid image-profile" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Kavi Deszo</h5>
                  <p class="card-text">Experience: 2years</p>
                  <a href="">Read more</a>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
          </div>
          <div id="read-header">
            <a href="ShowDesigner.jsp" id="read-name">Read more</a>
          </div>
         

        </div>
        <hr>
        <!-- safe part -->
        <div class="row justify-content-center">
          <div class="col-lg-11 Service-header">
            <h3 id="service-part">Stay safe. Design virtually.</h3>
          </div>
          <div class="row justify-content-center">
            <div class="col-lg-2 service-part">
              <div class="image"><img src="images/340156-PAMW7O-268.jpg" class= "img-fluid" id="content-image" alt="" ></div>
              <h2 class="service-name">Contactless Experience</h2>
              <p  class="service-paragraph">No stepping out. Design your <br> home interiors from the <br> safety and comfort of your <br> home.</p>
            </div>
            <div class="col-lg-2 service-part">
              <div class="image"><img src="images/isometric_60.jpg" class="img-fluid" alt="" id="pricing-image"></div>
              <h2  class="service-name" >Online Expertise</h2>
              <p  class="service-paragraph">Connect with our 600+<br> designers virtually and <br> explore designs online. </p>
            </div>
            <div class="col-lg-2 service-part">
              <div class="image"><img src="images/5865181.jpg" class="img-fluid" alt="" id="pricing-image"></div>
              <h2  class="service-name">Instant Pricing</h2>
              <p  class="service-paragraph" >Enjoy complete price<br> Enjoy complete price<br> budget.</p>
            </div>
            <div class="col-lg-2 service-part">
              <div class="image"><img src="images/2919616.jpg" class="img-fluid" alt="" id="pricing-image"></div>
              <h2  class="service-name">EMI Payment</h2>
              <p class="service-paragraph">No stepping out. Design your <br> home interiors from the <br> safety and comfort of your <br> home.</p>
            </div>
          </div>
        </div>
<jsp:include page="Footer.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>