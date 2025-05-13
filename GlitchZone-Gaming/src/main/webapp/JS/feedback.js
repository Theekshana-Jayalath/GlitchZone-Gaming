    const form = document.getElementById("feedbackForm");
    const clearBtn = document.getElementById("clearBtn");

    form.addEventListener("submit", function (e) {
      e.preventDefault();

      const fullname = document.getElementById("fullname").value.trim();
      const email = document.getElementById("email").value.trim();
      const subject = document.getElementById("subject").value.trim();
      const message = document.getElementById("message").value.trim();

      if (!fullname || !email || !subject || !message) {
        alert("All fields must be filled in.");
        return;
      }

      if (!email.includes("@") || !email.includes(".")) {
        alert("Please enter a valid email address.");
        return;
      }

      alert("Thank you! Your feedback has been submitted.");
      form.reset();
    });

    clearBtn.addEventListener("click", function () {
      form.reset();
    });