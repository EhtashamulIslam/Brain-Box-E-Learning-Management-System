document.addEventListener("DOMContentLoaded", function() {
    const container = document.querySelector('.container');

    // Fade in animation
    container.style.opacity = 0;
    setTimeout(() => {
        container.style.transition = 'opacity 0.5s';
        container.style.opacity = 1;
    }, 100);

    // Shake animation for error messages
    const errorMessages = document.querySelectorAll('.error');
    errorMessages.forEach(message => {
        message.addEventListener('mouseenter', function() {
            this.style.animation = 'shake 0.5s';
        });
        message.addEventListener('animationend', function() {
            this.style.animation = '';
        });
    });

    // Success animation
    const successMessage = document.querySelector('.success');
    if (successMessage) {
        setTimeout(() => {
            successMessage.style.transition = 'opacity 0.5s';
            successMessage.style.opacity = 0;
        }, 3000);
    }
});

document.addEventListener("DOMContentLoaded", function() {
    const container = document.querySelector('.container');
    const successMessage = document.createElement('div');
    successMessage.classList.add('success-message');
    successMessage.textContent = 'Your email has been successfully sent!';

    container.appendChild(successMessage);

    const submitButton = document.querySelector('input[type="submit"]');
    submitButton.addEventListener('click', function(event) {
        event.preventDefault();

        // Simulate sending email (remove setTimeout in actual implementation)
        setTimeout(function() {
            successMessage.classList.add('show');

            setTimeout(function() {
                successMessage.classList.remove('show');
            }, 3000); // Display message for 3 seconds
        }, 1000); // Simulate email sending delay
    });
});

