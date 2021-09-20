<!DOCTYPE html>
<!-- saved from url=(0081)http://www.csc.lsu.edu/~qywang/CSC7610/HTMLExercise/project/UserRegistration.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>The Student's Servlet project</title>
    <meta name="d41d8cd98f00b204e9800998ecf8427e_lib_detect" id="d41d8cd98f00b204e9800998ecf8427e_lib_detect">
    <script src="chrome-extension://cgaocdmhkmfnkdkbnckgmpopcbpaaejo/library/libraries.js"></script>
    <script src="chrome-extension://cgaocdmhkmfnkdkbnckgmpopcbpaaejo/content_scripts/lib_detect.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body data-new-gr-c-s-check-loaded="14.1028.0" data-gr-ext-installed="">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/LSU_Athletics_logo.svg/1280px-LSU_Athletics_logo.svg.png"
     width="200" alt="LSU Logo">

<h1>About LSU Computer Science</h1>.
Welcome to the <strong>Division of Computer Science and Engineering</strong> at LSU!.

<h2>Sign your information to the department!</h2>
<form action="http://localhost:8080/user_registration" method="post" enctype="multipart/form-data">
    <label>Name: <input name="name" type="text"
                        style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;"></label>
    <br>
    <label>Email: <input name="email" type="email"></label>
    <br>
    <label>Preferred place:
        <select name="location">
            <option value="Baton Rouge">Baton Rouge</option>
            <option value="New Orleans">New Orleans</option>
            <option value="New York">New York</option>
            <option value="Atlanta">Atlanta</option>
            <option value="Countryside">Countryside</option>
        </select></label>
    <br>
    <fieldset>
        <legend>Gender:</legend>
        <label for="female">Female</label>
        <input type="radio" name="gender" id="female" value="female">
        <label for="male">Male</label>
        <input type="radio" name="gender" id="male" value="male">
    </fieldset>
    <br>
    <label>Experience:
        <br>
        <textarea name="experience"></textarea>
    </label>
    <br>
    <br>
    Upload Your Profile Picture:
    <input type="file" name="file" id="file"> <br>
    FileName:
    <input type="text" value="myProPic.jpg" name="fileName" id="fileName">
    <br>
    <!--  <button type="submit">Sign Up</button> -->
    <input type="submit" value="Upload" name="upload" id="upload">
</form>


<br>
<br>
<a href="http://twitter.com/girldevelopit">Twitter</a> | <a href="http://www.facebook.com/girldevelopit">Facebook</a> |
<a href="http://www.flickr.com/photos/40453677@N00/sets/72157626841092971/">Flickr</a>


</body>
<grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>
</html>