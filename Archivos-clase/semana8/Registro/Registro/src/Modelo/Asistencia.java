package Modelo;

public class Asistencia {
    private int idEstudiante;
    private int idCurso;
    private int semana;
    private int anio;
    private boolean lunes;
    private boolean martes;
    private boolean miercoles;
    private boolean jueves;
    private boolean viernes;

    public Asistencia(int idEstudiante, int idCurso, int semana, int anio, boolean lunes, boolean martes, boolean miercoles, boolean jueves, boolean viernes) {
        this.idEstudiante = idEstudiante;
        this.idCurso = idCurso;
        this.semana = semana;
        this.anio = anio;
        this.lunes = lunes;
        this.martes = martes;
        this.miercoles = miercoles;
        this.jueves = jueves;
        this.viernes = viernes;
    }

    // Getters requeridos por PantallaAsistencia.java
    public int getIdEstudiante() { return idEstudiante; }
    public int getIdCurso() { return idCurso; }
    public int getSemana() { return semana; }
    public int getAnio() { return anio; }
    public boolean isLunes() { return lunes; }
    public boolean isMartes() { return martes; }
    public boolean isMiercoles() { return miercoles; }
    public boolean isJueves() { return jueves; }
    public boolean isViernes() { return viernes; }
    
    // (Otros Getters y Setters pueden ser incluidos si son necesarios más adelante)
}
