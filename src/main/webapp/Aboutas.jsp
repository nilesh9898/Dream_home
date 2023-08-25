<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>About as</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
     
     <!-- style  -->
     <link rel="stylesheet" href="css/aboutas.css">

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<body>
   
    <section class="background firstsection">
        <div class="box-main">
            <div class="firstHalf">
                <p class="text-big">About US</p>
                  
                <p class="text-small">
                    <div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro illo modi unde vitae soluta sunt inventore aliquid fugiat. Eos dolore commodi consectetur dicta sunt quo. Sequi eos odio nostrum. Possimus quasi nesciunt, error minus corporis facilis dolores itaque ducimus debitis fugit! Odit dicta aspernatur nihil quia eius quibusdam nobis natus, ullam adipisci nulla commodi fugiat veritatis quasi labore, reprehenderit ipsa eos doloribus itaque officiis? Ipsa nam repellat necessitatibus exercitationem veritatis itaque debitis, ipsum nesciunt perferendis saepe dolore, dolorem iusto temporibus totam odit amet assumenda. Architecto ex ea at quam eos vero. Eligendi assumenda architecto esse iste? Ab reiciendis incidunt tempore!</div>
                </p>
                <br>
                <p class="center"><a href="#Order" 
                   style="text-decoration:none;color:white;">
                        Below are the people who
                        works in our company</a>
                </p>
            </div>
        </div>
    </section>
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