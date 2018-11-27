<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>

    <div class="container">
        <p>Welcome to my website pepito...</p>
    </div>

    <script src="js/sweetalert.min.js"></script>
    <script src="{{asset('js/sweetalert.min.js')}}"></script>

    <!-- Include this after the sweet alert js file -->
    @include('sweet::alert')

</body>

</html>
