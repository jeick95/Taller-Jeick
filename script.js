const content = document.getElementById('content');
const btnInicio = document.getElementById('btn-inicio');
const btnTrabajos = document.getElementById('btn-trabajos');

// Contenido Inicio
const contenidoInicio = `
  <div class="info-box">
    <h2>Información sobre Inteligencia Artificial</h2>
    <p>La inteligencia artificial (IA) es una rama de la informática que se enfoca en la creación de sistemas capaces de realizar tareas que normalmente requieren inteligencia humana, como el aprendizaje, razonamiento y resolución de problemas.</p>
  </div>
`;

// Función para mostrar Inicio
function mostrarInicio() {
  content.innerHTML = contenidoInicio;
  btnInicio.classList.add('active');
  btnTrabajos.classList.remove('active');
}

// Función para mostrar Trabajos con semanas 1 a 8
function mostrarTrabajos() {
  let html = '';
  for (let i = 1; i <= 8; i++) {
    html += `
      <div class="semana-card">
        <h3>Semana ${i}</h3>
        <p>Aquí va la descripción o contenido para la semana ${i}.</p>
      </div>
    `;
  }
  content.innerHTML = html;
  btnTrabajos.classList.add('active');
  btnInicio.classList.remove('active');
}

// Event Listeners para botones
btnInicio.addEventListener('click', mostrarInicio);
btnTrabajos.addEventListener('click', mostrarTrabajos);

// Mostrar Inicio por defecto al cargar la página
mostrarInicio();
