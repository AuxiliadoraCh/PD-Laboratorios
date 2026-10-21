package org.example;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;

import java.io.InputStream;

public class Connection {
    private final Prolog engine = new Prolog();

    public Connection() throws Exception {
        try (InputStream in = getClass().getResourceAsStream("/calculo.pl")) {
            if (in == null) throw new IllegalStateException("No se encontró calculo.pl");
            engine.setTheory(new Theory(in));
        }
    }

    public String consultar(String operacion, int a, int b) throws Exception {
        String consulta = operacion + "(" + a + ", " + b + ", Resultado).";

        SolveInfo info = engine.solve(consulta);

        return info.isSuccess() ? info.getTerm("Resultado").toString()
                : "Sin solución (verifica que la operación exista)";
    }
}