<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
      }
      
      .book-container {
        perspective: 1000px;
      }
      
      .book {
        display: flex;
        align-items: center;
        transform-style: preserve-3d;
        transition: transform 0.8s ease;
      }
      
      .book img{
        max-width: 500px;
        max-height: 600px;
      }
      
      .book-front {
        transform : translateZ(23px)
      }

      .book-side {
        position: absolute;
        transform: rotateY(-90deg) translateX(-50%);
        transform-origin: left;
      }
      
      .book-back {
        position: absolute;
        transform: rotateY(180deg) translateZ(23px)
      }
      
      .book-container:hover .book {
        transform: rotateY(45deg);
      }
      
      .book-container.clicked .book {
        transform: rotateY(180deg);
      }
  </style>
  <title>3D Book</title>
</head>
<body>
  <div class="book-container">
    <div class="book">
      <img class="book-front" src=${img3d.front } alt="Book Front">
      <img class="book-side" src=${img3d.side } alt="Book Side">
      <img class="book-back" src=${img3d.back } alt="Book Back">
    </div>
  </div>
  <script>
    document.querySelector('.book-container').addEventListener('click', function () {
        this.classList.toggle('clicked');
      });
  </script>
</body>
</html>