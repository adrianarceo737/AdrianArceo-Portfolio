const navLinks = document.querySelectorAll('.nav-links a');
const sections = [...navLinks].map(link => document.querySelector(link.getAttribute('href')));

const setActiveLink = () => {
  const scrollPos = window.scrollY + 120;
  sections.forEach((section, index) => {
    if (!section) return;
    const offset = section.offsetTop;
    const height = section.offsetHeight;
    if (scrollPos >= offset && scrollPos < offset + height) {
      navLinks.forEach(link => link.classList.remove('active'));
      navLinks[index].classList.add('active');
    }
  });
};

document.addEventListener('scroll', setActiveLink);
setActiveLink();

document.getElementById('year').textContent = new Date().getFullYear();
