// PARA HACER MOVER LA IMAGEN PRINCIPAL DE INICIO (movible con mouse o tactil)

const movibleImg = document.getElementById('movible-img');

if (movibleImg) {
  let isDragging = false;
  let startX, startY, currentX = 0, currentY = 0;

  movibleImg.style.transform = `translate(0px, 0px)`;

  movibleImg.addEventListener('mousedown', startDrag);
  movibleImg.addEventListener('touchstart', startDrag, {passive:true});

  window.addEventListener('mouseup', endDrag);
  window.addEventListener('touchend', endDrag);

  window.addEventListener('mousemove', drag);
  window.addEventListener('touchmove', drag, {passive:false});

  function startDrag(e) {
    e.preventDefault();
    isDragging = true;
    const pos = e.type === 'touchstart' ? e.touches[0] : e;
    startX = pos.clientX - currentX;
    startY = pos.clientY - currentY;
    movibleImg.style.transition = 'none';
    movibleImg.style.cursor = 'grabbing';
  }

  function drag(e) {
    if (!isDragging) return;
    e.preventDefault();
    const pos = e.type === 'touchmove' ? e.touches[0] : e;
    currentX = pos.clientX - startX;
    currentY = pos.clientY - startY;

    // Limitar el movimiento para que no se salga demasiado
    const maxMove = 50;
    currentX = Math.min(maxMove, Math.max(-maxMove, currentX));
    currentY = Math.min(maxMove, Math.max(-maxMove, currentY));

    movibleImg.style.transform = `translate(${currentX}px, ${currentY}px)`;
  }

  function endDrag(e) {
    if (!isDragging) return;
    isDragging = false;
    // Vuelve a la posición original al soltar con animación suave
    movibleImg.style.transition = 'transform 0.5s ease';
    movibleImg.style.transform = `translate(0px, 0px)`;
    movibleImg.style.cursor = 'grab';
  }
}

// Puedes agregar más funciones JS para animaciones o interacciones si deseas, por ejemplo, textos que tiemblan o pequeñas animaciones extras.

/* EJEMPLO: Texto que se mueve un poco (puedes añadir clase "move-text" en etiquetas que quieras animar) */

const animatedTexts = document.querySelectorAll('.move-text');
let animDirection = 1;
let animPos = 0;
let animMax = 10;

function animateTexts() {
  animPos += 0.2 * animDirection;
  if (animPos > animMax || animPos < -animMax) animDirection *= -1;

  animatedTexts.forEach(el => {
    el.style.transform = `translateX(${animPos}px)`;
  });

  requestAnimationFrame(animateTexts);
}

if(animatedTexts.length > 0) {
  animateTexts();
}
