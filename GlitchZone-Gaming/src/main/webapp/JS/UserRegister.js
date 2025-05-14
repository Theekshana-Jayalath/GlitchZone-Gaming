// Email validation for GlitchZone-Gaming registration form
document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form[action="UserInsertServlet"]');
    const emailInput = document.querySelector('input[name="email"]');
    
    // Create error message element
    const errorMessage = document.createElement('span');
    errorMessage.className = 'error-message';
    errorMessage.style.color = 'red';
    errorMessage.style.display = 'none';
    errorMessage.style.fontSize = '14px';
    errorMessage.style.marginTop = '5px';
    
    // Insert error message after email input
    emailInput.parentNode.insertBefore(errorMessage, emailInput.nextSibling);
    
    // Function to validate email format
    function validateEmail(email) {
        // Regular expression for email validation
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return emailRegex.test(email);
    }
    
    // Add blur event listener to validate when user leaves the field
    emailInput.addEventListener('blur', function() {
        const email = this.value.trim();
        
        if (email === '') {
            errorMessage.textContent = 'Email is required';
            errorMessage.style.display = 'block';
            this.classList.add('invalid-input');
        } else if (!validateEmail(email)) {
            errorMessage.textContent = 'Please enter a valid email address';
            errorMessage.style.display = 'block';
            this.classList.add('invalid-input');
        } else {
            errorMessage.style.display = 'none';
            this.classList.remove('invalid-input');
        }
    });
    
    // Add input event listener to validate as user types
    emailInput.addEventListener('input', function() {
        if (this.value.trim() !== '' && validateEmail(this.value.trim())) {
            errorMessage.style.display = 'none';
            this.classList.remove('invalid-input');
        }
    });
    
    // Form submission validation
    form.addEventListener('submit', function(event) {
        const email = emailInput.value.trim();
        
        if (!validateEmail(email)) {
            errorMessage.textContent = 'Please enter a valid email address';
            errorMessage.style.display = 'block';
            emailInput.classList.add('invalid-input');
            emailInput.focus();
            event.preventDefault();
        }
    });
});