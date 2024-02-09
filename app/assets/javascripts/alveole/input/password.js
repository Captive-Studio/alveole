function togglePassword(input) {
  toggleInputType(input)
  toggleIcon(input)
}

function toggleInputType(input) {
  input.type = input.type === 'password' ? 'text' : 'password';
}

function toggleIcon(input) {
  const button = input.nextElementSibling;

  const passwordHiddenElements = button.querySelectorAll('.password-hidden')
  const passwordActiveElements = button.querySelectorAll('.password-active')

  passwordHiddenElements.forEach(input => {
    input.classList.remove('password-hidden');
    input.classList.remove('hidden');
    input.classList.add('password-active');
  });
  passwordActiveElements.forEach(input => {
    input.classList.add('password-hidden');
    input.classList.add('hidden');
    input.classList.remove('password-active');
  });
}

function focusOnInput(input) {
  input.focus()
  placeCursorAtEnd(input)
}

function placeCursorAtEnd(input) {
  const length = input.value.length;
  input.setSelectionRange(length, length);
}

export function initializeInputPassword() {
  const passwordInputs = document.querySelectorAll('alv-input-password input[type="password"]');

  passwordInputs.forEach(input => {
    const button = input.nextElementSibling;
    if (button && button.tagName === 'BUTTON') {
      button.addEventListener('click', (e) => {
        togglePassword(input);
        focusOnInput(input);
      });
    }
  });
}
