<#-- terms.ftl -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Terms and Conditions</title>
</head>
<body>
  <h1>Terms and Conditions</h1>
  <p>Welcome to our service! Please read and accept our Terms and Conditions to continue.</p>
  <div class="terms">
    <p>Here are the terms and conditions...</p>
    <p>Full terms content goes here...</p>
  </div>
  
  <form action="${url.loginAction}" method="POST">
    <div>
      <label for="accept_terms">
        <input type="checkbox" id="accept_terms" name="accept_terms" required />
        I accept the Terms and Conditions
      </label>
    </div>
    <div>
      <input type="submit" value="Accept and Continue" />
    </div>
  </form>
</body>
</html>