<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Karangtaruna Ilato</title>

  <!-- Custom fonts for this template-->
  <link href="<?= base_url('assets/') ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<?= base_url('assets/') ?>css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block">
                <img src="<?= base_url('assets/image/login/bg-login.jpg') ?>" width="100%">
              </div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Karangtaruna Ilato</h1>
                  </div>
                  <form class="user" id="formLogin">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Username">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password" onkeydown="if(event.keyCode == 13 ) { login() }">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <span onclick="login()" class="btn btn-primary btn-user btn-block">
                      Login
                    </span>
                    <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Login
                    </a> -->
                    <!-- <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a> -->
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="<?= base_url('login/forgot') ?>">Lupa Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="<?= base_url('login/register') ?>">Belum punya akun!</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="<?= base_url() ?>">Kembali ke Beranda</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<?= base_url('assets/') ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?= base_url('assets/') ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?= base_url('assets/') ?>vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?= base_url('assets/') ?>js/sb-admin-2.min.js"></script>
  <script src="<?= base_url('assets/') ?>js/sweetalert.min.js"></script>
  <script>
    $(document).ready(function() {

    });

    function login() {
      $.ajax({
        url: "<?= base_url('login/masuk') ?>",
        data: $("#formLogin").serialize(),
        type: 'post',
        dataType: 'json'
      }).done(function(data) {
        if(data.status == 200){
          swal({
            title: "Berhasil!",
            text: "Anda telah berhasil Login!",
            icon: "success",
            button: "oke",
          }).then((status)=>{
            window.location.href = "<?= base_url("Welcome/admin") ?>"
          });
        } else {
          swal("Warning", data.message, "warning");
          $("#username").val("");
          $("#password").val("");
        }
      });
    }
  </script>

</body>

</html>
